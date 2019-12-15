# frozen_string_literal: true

require 'sass/css'

# validate css input
class CssValidator < ActiveModel::EachValidator
  # custom validation method
  # @see https://guides.rubyonrails.org/active_record_validations.html#custom-validators
  def validate_each(record, attribute, value)
    !!Sass::CSS.new(value).render
  rescue Sass::SyntaxError => e
    record.errors[attribute] << e.message
  end
end
