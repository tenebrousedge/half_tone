class Cover
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  embedded_in :covered, polymorphic: true
  has_mongoid_attached_file :image
end
