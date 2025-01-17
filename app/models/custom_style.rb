# frozen_string_literal: true

class CustomStyle
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, type: String
  embedded_in :styled, polymorphic: true
end
