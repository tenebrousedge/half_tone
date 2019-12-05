# frozen_string_literal: true

class CustomStyle
  field :text, type: String
  belongs_to :styleable, polymorphic: true
end
