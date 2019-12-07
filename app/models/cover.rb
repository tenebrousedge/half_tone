class Cover < ApplicationRecord
  belongs_to :covereable, polymorphic: true
  has_one_attached :image
end
