# frozen_string_literal: true

class Background
  field :url, type: String
  embedded_in :backgrounded, polymorphic: true
  has_one_attached :image
end
