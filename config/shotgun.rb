require 'cuba'
require 'cuba/contrib'
require 'cuba/sugar'
require "cuba/render"
require 'slim'
require 'shield'

require 'logger'
require 'yaml'
require 'omniauth-twitter'

require 'sequel'
DB = Sequel.connect('sqlite://db/app.sqlite3')
DB.loggers << Logger.new($stdout)