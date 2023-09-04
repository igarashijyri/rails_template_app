
FROM ruby:3.1.2
ARG RUBYGEMS_VERSION=3.3.20
# WORKDIR：アプリケーションサーバコンテナの作業ディレクトリ
RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem update --system ${RUBYGEMS_VERSION} && \
    bundle install
COPY . /app

# コンテナ起動時に実行させるスクリプト
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# "0.0.0.0"だと全てのIPアドレスからのアクセスを許可しているので本番環境では注意すること
CMD ["rails", "server", "-b", "0.0.0.0"]