require 'forwardable'

require 'active_support/core_ext'

require 'active_model/error_collecting'

require 'active_record'
require 'active_record/base'
require 'active_record/validations'

module ActiveRecord
  module Validations
    def errors
      @errors ||= ActiveModel::ErrorCollecting::Errors.new(self)
    end
  end
end
