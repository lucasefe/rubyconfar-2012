require './config/shotgun'

desc "Console"
task :console => :load_models do
  require 'pry'
  Pry.start
end

desc "Migrate schema"
task :migrate  do
  require 'sequel/extensions/migration'
  Sequel::Migrator.run(DB, 'db/migrations', use_transactions: true)
end

desc "Seed database with basic info"
task :seed => :load_models do
  require './db/seed'
end


task :load_models do
  Dir.glob('./models/*').each { |r| require r unless File.directory?(r) }
end
