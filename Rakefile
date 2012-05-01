require './config/shotgun'

desc "Migrate schema"
task :migrate  do
  require 'sequel/extensions/migration'
  Sequel::Migrator.run(DB, 'db/migrations', use_transactions: true)
end