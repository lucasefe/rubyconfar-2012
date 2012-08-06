ENV['RACK_ENV'] ||= 'development'

require 'cuba'
require 'cuba/contrib'
require 'cuba/sugar'
require "cuba/render"
require 'cuba/sugar'
require 'slim'
require 'sass'
require 'shield'
require 'logger'
require 'omniauth-twitter'

require 'yaml'
SETTINGS = YAML.load_file('config/settings.yml' )

require 'sequel'
DB = Sequel.connect("sqlite://db/#{ENV['RACK_ENV']}.sqlite3")
DB.loggers << Logger.new($stdout)

require 'bourbon'
SASS_LOAD_PATHS = ["./views/stylesheets/bourbon"]

require 'malone'
Malone.connect(url: SETTINGS['smtp_settings']['url'])
