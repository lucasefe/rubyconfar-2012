# encoding: utf-8
ENV['RACK_ENV'] = 'test'
require 'minitest/matchers'
require 'minitest/autorun'
require 'minitest/pride'

require 'capybara'
require 'capybara/dsl'
require 'launchy'
require 'turn'
require 'fileutils'
db_file = "db/test.sqlite3"
FileUtils.rm(db_file) if File.exists?(db_file)

require_relative '../config/shotgun'
# This should go after loading the Malone conf
require 'malone/test'
require 'sequel'
DB.loggers = []
require 'sequel/extensions/migration'
Sequel::Migrator.run(DB, 'db/migrations', use_transactions: true)

class MiniTest::Spec
  include Capybara::DSL
end

require_relative '../app'
Capybara.app = Cuba

Turn.config.format = :progress

