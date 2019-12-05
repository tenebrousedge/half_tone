# frozen_string_literal: true

# concern for attaching pages to other models
module Pageable
  extend ActiveSupport::Concern

  included do
    has_many :pages, as: :pageable
    accepts_nested_attributes_for :pages, as: :pageable, allow_destroy: true
  end
end
