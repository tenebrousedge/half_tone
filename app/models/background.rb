class Background
  include Mongoid::Document
  include Mongoid::Timestamps
  field :url, type: String
  embedded_in :backgrounded, polymorphic: true
end
