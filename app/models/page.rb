# frozen_string_literal: true

# Page class
class Page < ApplicationRecord
  include Styleable
  publishable
  belongs_to :pageable, polymorphic: true, inverse_of: :page
  has_one_attached :image
end
