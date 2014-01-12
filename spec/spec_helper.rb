# encoding: utf-8

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rspec'
require 'active_model'
require 'active_model/better_errors'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
end

#
# String
#
class String
  def ==(other)
    if other.is_a? ActiveModel::ErrorCollecting::ErrorMessage
      return super other.to_s
    else
      super
    end
  end
end

# silence deprecation warnings
I18n.enforce_available_locales = false
