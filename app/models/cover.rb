class Cover
  belongs_to :covereable, polymorphic: true
  has_one_attached :image
end
