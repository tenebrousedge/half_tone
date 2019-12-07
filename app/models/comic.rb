class Comic < ApplicationRecord
  include Ownable
  include Coverable
  include Backgroundable
  include Styleable
  validates_presence_of :title
  belongs_to :author
  has_many :books
  accepts_nested_attributes_for :books, allow_destroy: true
end
