class Cover
  embedded_in :covered, polymorphic: true
  has_one_attached :image
end
