class Cover < ApplicationRecord
  include Ownable
  include PolymorphicJoin
  belongs_to :coverable, polymorphic: true
  has_one_attached :image
end
