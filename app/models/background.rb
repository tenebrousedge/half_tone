# frozen_string_literal: true

class Background < ApplicationRecord
  include PolymorphicJoin
  include Ownable
  belongs_to :backgroundeable, polymorphic: true
  has_one_attached :image
end
