# frozen_string_literal: true

class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Publishable
  field :url, type: String
  embedded_in :pageable, polymorphic: true
  has_mongoid_attached_file :image
end
