# frozen_string_literal: true

# concern for attaching styles to other models
module Styleable
  extend ActiveSupport::Concern

  included do
    has_many :styles, as: :styleable
  end
end
