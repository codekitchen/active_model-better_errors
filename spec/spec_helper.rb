# encoding: utf-8

# SimpleCov MUST be started before require 'rom-relation'
#
if ENV['COVERAGE'] == 'true'
  require 'simplecov'
  require 'coveralls'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::HTMLFormatter,
    Coveralls::SimpleCov::Formatter
  ]

  SimpleCov.start do
    command_name 'spec:unit'

    add_filter 'config'
    add_filter 'lib/rom/support'
    add_filter 'spec'
  end
end

def migrate_test_db
  ActiveRecord::Base.connection.create_table(:users) do |t|
    t.string :first_name
    t.string :last_name
    t.string :email
  end
  ActiveRecord::Base.connection.create_table(:rulers) do |t|
    t.int :length
  end
end

RSpec.configure do |config|
  config.before(:all) do
    ActiveRecord::Base.establish_connection(
      adapter: 'sqlite3',
      database: ':memory:')
    migrate_test_db
  end
end

require 'active_model/better_errors'
require 'devtools/spec_helper'
