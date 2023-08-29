ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, :current_password

  index do
    selectable_column
    id_column
    column :name
    column :email
    column :encrypted_password
    column :created_at
    actions
  end

  filter :email
  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      if f.object.persisted?
        f.input :current_password
      end
    end
    f.actions
  end
end
