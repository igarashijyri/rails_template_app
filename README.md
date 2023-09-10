Railsアプリケーションを作成するときの雛形  

◆開発環境構築手順
  1. docker-compose build
  2. docker-compose run --rm web rails db:create
  3. docker container exec -it `コンテナID`
  4. rails db:migrate

◆提供している機能
　・ログイン機能          => devise  
　・管理者画面            => Active Admin  
　・ページネーション機能   => kaminari  
　・自動化テスト           => Rspec  
　・デバッグ機能           => pry-rails  

◆本番環境について
　現在作業中。
