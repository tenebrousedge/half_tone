class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :subtitle, type: String
  field :sort, type: Integer
  field :pubished_at, type: Timestamp
  field :chapter, type: HasMany
  embedded_in :comic
end
