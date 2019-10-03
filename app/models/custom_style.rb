class CustomStyle
  include Mongoid::Document
  field :text, type: String
  embedded_in :styled, polymorphic: true
end
