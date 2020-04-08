source 'https://rubygems.org'

gem 'rails',        '5.1.6'
gem 'bootstrap', '~> 4.4.1'
gem 'font-awesome-sass', '~> 5.4.1'
gem 'jquery-rails', '4.3.1'
gem 'puma',         '3.12.4'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem 'execjs'
# Ruby用のコード整形Gem
gem 'rufo'
# 開発・テスト環境のDBもpostgresへ移行
gem 'pg', '0.20.0'
# Excel,CSVを開くことが可能
gem 'roo'
gem 'roo-xls'
# paginate用のGem
gem 'kaminari'
# ハッシュ化する
gem 'bcrypt',         '3.1.12'
# BULK INSERTを実装する（Rails6からはGemは不要）
gem 'activerecord-import'

group :development, :test do
  gem 'byebug',  '9.0.6', platform: :mri
  # コード解析・整形
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-performance'
  gem 'rubocop-rspec'
  # テスト環境
  gem 'rspec-rails', '~> 4.0.0'
  # bin/rspecコマンドでSpringによってテストを高速化
  gem 'spring-commands-rspec'
  # 実在しそうな名前でダミーデータを作成するためのもの。
  gem 'faker', '1.7.3'
  # テストの際に使用するデータを作成するためのもの
  gem 'factory_bot_rails'
  # 逐一テストデータを削除するためのもの
  gem 'database_cleaner-active_record'
  # アプリケーション操作のテスト検証で使用。主に画面に関わる結合テスト
  gem 'capybara', '~> 2.13'
  # Capybaraで現在のページを確認
  gem 'launchy'
  # 複数テストの並行実行用
  gem 'selenium-webdriver'
  # 自動化のために必要なgm
  gem 'rspec_junit_formatter'
  # 環境変数の設定
  gem 'dotenv-rails'
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  # コード解析・テスト自動化（ファイル変更時）
  gem 'guard', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-rspec', require: false
  # デスクトップ通知を行う
  gem 'terminal-notifier', require: false
  gem 'terminal-notifier-guard', require: false
end

# Windows環境ではtzinfo-dataというgemを含める必要がある
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
