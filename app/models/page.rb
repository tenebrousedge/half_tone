# frozen_string_literal: true

# Page class
class Page < ApplicationRecord
  include Ownable
  include Styleable
  include PolymorphicJoin
  publishable
  belongs_to :pageable, polymorphic: true, inverse_of: :pages
  has_one_attached :image
end
