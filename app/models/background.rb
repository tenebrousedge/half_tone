# frozen_string_literal: true

class Background
  belongs_to :backgroundeable, polymorphic: true
  has_one_attached :image
end
