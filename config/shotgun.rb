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

if ENV['RACK_ENV'] == 'development'
  require 'sequel'
else
  require 'pg'
end
DB = Sequel.connect(ENV['DATABASE_URL'] || "sqlite://db/#{ENV['RACK_ENV']}.sqlite3")
DB.loggers << Logger.new($stdout)

require 'bourbon'
SASS_LOAD_PATHS = ["./views/stylesheets/bourbon"]

require 'malone'
Malone.connect(url: SETTINGS['smtp_settings']['url'])


class Array
  def in_groups_of(number, fill_with = nil)
    if fill_with == false
      collection = self
    else
      # size % number gives how many extra we have;
      # subtracting from number gives how many to add;
      # modulo number ensures we don't add group of just fill.
      padding = (number - size % number) % number
      collection = dup.concat([fill_with] * padding)
    end

    if block_given?
      collection.each_slice(number) { |slice| yield(slice) }
    else
      groups = []
      collection.each_slice(number) { |group| groups << group }
      groups
    end
  end
end