# frozen_string_literal: true

class CustomStyle < ApplicationRecord
  belongs_to :styleable, polymorphic: true, inverse_of: :custom_styles
  validates_presence_of :text
  rails_admin do
    edit do
      field :text, :code_mirror do
        label "CSS code"
      end
      field :styleable
    end
  end
end
