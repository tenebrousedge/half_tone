class Comic < ApplicationRecord
  include Pageable
  include Ownable
  include Coverable
  include Backgroundable
  include Styleable
  store :settings, accessors: [:vertical_infinite_scroll], coder: JSON
  include Storext.model(settings: {})
  validates_presence_of :title
  belongs_to :author
  has_many :books
  accepts_nested_attributes_for :books, allow_destroy: true
  store_attribute :settings, :vertical_infinite_scroll, Boolean, default: true
  rails_admin do
    list do
      configure :vertical_infinite_scroll, :boolean
      exclude_fields :settings
    end
    edit do
      configure :vertical_infinite_scroll, :boolean
      exclude_fields :settings
    end
    show do
      configure :vertical_infinite_scroll, :boolean
      exclude_fields :settings
    end
  end
end
