class Page
  include Mongoid::Document
  include Mongoid::Timestamps
  field :url, type: String
  embedded_in :pageable, polymorphic: true
end
