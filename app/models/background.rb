# frozen_string_literal: true

class Background
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  field :url, type: String
  embedded_in :backgrounded, polymorphic: true
  has_mongoid_attached_file :image
end
