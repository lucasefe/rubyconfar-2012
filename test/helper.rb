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
FileUtils.rm("db/test.sqlite3")

require_relative '../config/shotgun'
require 'sequel'
require 'sequel/extensions/migration'
Sequel::Migrator.run(DB, 'db/migrations', use_transactions: true)

class MiniTest::Spec
  include Capybara::DSL
end

require_relative '../app'
Capybara.app = Cuba

Turn.config.format = :progress

