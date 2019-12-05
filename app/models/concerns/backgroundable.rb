# frozen_string_literal: true

# concern for attaching backgrounds to other models
module Backgroundable
  extend ActiveSupport::Concern

  included do
    has_one :background, as: :backgroundable
    accepts_nested_attributes_for :background
  end
end
