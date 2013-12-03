$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'pry'

require 'active_model/better_errors'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

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

class String
  def ==(other)
    return super other.to_s if other.is_a? ActiveModel::ErrorCollecting::ErrorMessage
    super
  end
end
