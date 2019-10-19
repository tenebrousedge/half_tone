# frozen_string_literal: true

class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Publishable
  include HalfTone::Ownable
  field :url, type: String
  embedded_in :pageable, polymorphic: true
  has_mongoid_attached_file :image
end
