# encoding: utf-8

#
# Allows included class to emulate ActiveModel::Errors class
# by defining a set of methods to delegate to facilities
# in this gem.
#
module ActiveModel
  module BetterErrors
    #
    # Emulation
    # The ActiveModel Emulation Layer
    #
    module Emulation
      include Enumerable

      MODEL_METHODS = [
        :clear, :include?, :get, :set, :delete, :[], :[]=,
        :each, :size, :length, :values, :keys, :count, :empty?, :any?,
        :added?, :entries
      ]

      MESSAGE_REPORTER_METHODS = [
        :full_messages, :full_message, :generate_message
      ]

      def self.included(base)
        base.class_eval do
          extend Forwardable
          def_delegators :error_collection, *MODEL_METHODS
          def_delegators :message_reporter, *MESSAGE_REPORTER_METHODS
          def_delegators :hash_reporter,    :to_hash
          def_delegators :array_reporter,   :to_a

          alias_method :blank?, :empty?
          alias_method :has_key?, :include?
        end
      end

      def add_on_empty(attributes, options = {})
        [attributes].flatten.each do |attr|
          value = @base.respond_to?(attr.to_s) ? @base.send(attr.to_s) : @base[attr.to_s]
          is_empty = value.respond_to?(:empty?) ? value.empty? : false
          add(attr, :empty, options) if value.nil? || is_empty
        end
      end

      def add_on_blank(attributes, options = {})
        [attributes].flatten.each do |attr|
          value = @base.respond_to?(attr.to_s) ? @base.send(attr.to_s) : @base[attr.to_s]
          add(attr, :blank, options) if value.blank?
        end
      end

      def add(attribute, message=nil, options = nil)
        options ||= {}
        options = { message: options } unless options.is_a?(Hash)
        if options[:strict]
          error   = ErrorMessage.build(attribute, message, options)
          message = ::ActiveModel::BetterErrors.format_message(@base, error)
          full_message = full_message(attribute, message)
          fail ActiveModel::StrictValidationFailed, full_message
        end
        error_collection.add attribute, message, options
      end

      def to_xml(options = {})
        to_a.to_xml options.reverse_merge(root: 'errors', skip_types: true)
      end

      def as_json(options = nil)
        to_hash
      end
    end
  end
end
