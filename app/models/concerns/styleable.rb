# frozen_string_literal: true

# concern for attaching styles to other models
module Styleable
  extend ActiveSupport::Concern

  included do
    has_many :custom_styles, as: :styleable, inverse_of: :styleable
    accepts_nested_attributes_for :custom_styles, allow_destroy: true
  end
end
