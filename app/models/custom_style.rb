# frozen_string_literal: true

class CustomStyle < ApplicationRecord
  include PolymorphicJoin
  include Ownable
  belongs_to :styleable, polymorphic: true, inverse_of: :custom_styles
  validates :text, presence: true, css: true
  rails_admin do
    edit do
      field :text, :code_mirror do
        label "CSS code"
      end
      field :styleable
    end
  end
end
