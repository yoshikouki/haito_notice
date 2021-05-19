source 'https://rubygems.org'

gem 'rails',        '5.2.4.2'
gem 'bootstrap',    '~> 4.4.1'
gem 'bootsnap'
gem 'font-awesome-sass', '~> 5.4.1'
gem 'jquery-rails', '4.3.1'
gem 'puma',         '4.3.8'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem 'execjs'
# Ruby用のコード整形Gem
gem 'rufo'
# 開発・テスト環境のDBもpostgresへ移行
gem 'pg',           '0.20.0'
# Excel,CSVを開くことが可能
gem 'roo'
gem 'roo-xls'
# paginate用のGem
gem 'kaminari'
# ハッシュ化する
gem 'bcrypt',       '3.1.12'
# BULK INSERTを実装する（Rails6からはGemは不要）
gem 'activerecord-import'
# テンプレートエンジンはHamlを使用
gem 'haml-rails'
# 多言語化（ローカライズ）のため
gem 'rails-i18n'

group :development, :test do
  gem 'byebug',  '9.0.6', platform: :mri
  # コード解析・整形
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-performance'
  gem 'rubocop-rspec'
  # テスト環境
  gem 'rspec-rails'
  # bin/rspecコマンドでSpringによってテストを高速化
  gem 'spring-commands-rspec'
  # 実在しそうな名前でダミーデータを作成するためのもの。
  gem 'faker', '1.7.3'
  # テストの際に使用するデータを作成するためのもの
  gem 'factory_bot_rails'
  # アプリケーション操作のテスト検証で使用。主に画面に関わる結合テスト
  gem 'capybara'
  # Capybaraで現在のページを確認
  gem 'launchy'
  # 複数テストの並行実行用
  gem 'selenium-webdriver'
  # 自動化のために必要なgm
  gem 'rspec_junit_formatter'
  # 環境変数の設定
  gem 'dotenv-rails'
  # テスト上の外部APIリクエストをモック化する
  gem 'webmock', require: false
  # テストでChromeを使用する
  gem 'webdrivers'
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

group :test do
end

# Windows環境ではtzinfo-dataというgemを含める必要がある
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
