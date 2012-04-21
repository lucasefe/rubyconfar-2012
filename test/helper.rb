require_relative '../shotgun'
require_relative '../app'

require 'minitest/matchers'
require 'minitest/autorun'
require 'minitest/pride'

require 'capybara'
require 'capybara/dsl'
require 'turn'

class MiniTest::Spec
  include Capybara::DSL
end

Capybara.app = Cuba

# Dir["test/factories/*.rb"].each { |rb| require_relative "../#{rb}" }

Turn.config.format = :progress

