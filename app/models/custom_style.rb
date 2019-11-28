# frozen_string_literal: true

class CustomStyle
  field :text, type: String
  embedded_in :styled, polymorphic: true
end
