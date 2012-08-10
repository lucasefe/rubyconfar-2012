require './config/shotgun'

desc "Console"
task :console do
  Dir.glob('./models/*').each { |r| require r unless File.directory?(r) }
  require 'pry'
  Pry.start
end

desc "Migrate schema"
task :migrate  do
  require 'sequel/extensions/migration'
  Sequel::Migrator.run(DB, 'db/migrations', use_transactions: true)
end
