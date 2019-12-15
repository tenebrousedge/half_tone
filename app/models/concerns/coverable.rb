# frozen_string_literal: true

# concern for attaching covers to other models
module Coverable
  extend ActiveSupport::Concern

  included do
    has_one :cover, as: :coverable, inverse_of: :coverable
    accepts_nested_attributes_for :cover
  end
end
