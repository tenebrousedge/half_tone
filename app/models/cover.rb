class Cover < ApplicationRecord
  include Ownable
  include PolymorphicJoin
  belongs_to :covereable, polymorphic: true
  has_one_attached :image
end
