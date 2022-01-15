# README
Railsアプリケーション

## 準備

### macでmysql2がインストールエラーとなるため、以下のコマンドであらかじめインストール
```sh
gem install mysql2 -- --with-opt-dir="$(brew --prefix openssl@1.1)"
```

### 共通
```sh 
bundle install
rails db:migrate
```

## RSpec テスト

### gem
```sh
gem 'capybara', '>= 2.15'
gem 'rspec-rails'
gem "factory_bot_rails"
gem 'faker'
```

### RUN テスト
#### 準備
```sh
rails db:migrate RAILS_ENV=test
```

#### run
```sh
bundle exec rspec spec/ --format documentation
```