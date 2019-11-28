# frozen_string_literal: true

class Book
  field :title, type: String
  field :subtitle, type: String
  field :sort, type: Integer
  field :chapter, type: HasMany
  embedded_in :comic
end
