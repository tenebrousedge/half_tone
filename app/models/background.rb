# frozen_string_literal: true

class Background
  include Mongoid::Document
  include Mongoid::Timestamps
  include HalfTone::Ownable
  field :url, type: String
  embedded_in :backgrounded, polymorphic: true
  has_mongoid_attached_file :image
end
