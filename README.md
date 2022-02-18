# README
Railsアプリケーション

## 準備

### macでmysql2がインストールエラーとなるため、以下のコマンドであらかじめインストール
```sh
gem install mysql2 -- --with-opt-dir="$(brew --prefix openssl@1.1)"
```

#### M1チップ（openssl@3）の場合はこちら
```sh
brew install openssl
echo 'export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
bundle config --local build.mysql2 "--with-ldflags=-L/opt/homebrew/opt/openssl@3/lib"
export LIBRARY_PATH=$LIBRARY_PATH:/opt/homebrew/Cellar/zstd/1.5.2/lib:/opt/homebrew/Cellar/openssl@3/3.0.1/lib/
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