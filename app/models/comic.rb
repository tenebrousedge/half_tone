class Comic
  include Ownable
  validates_presence_of :title
  belongs_to :author
  has_many :pages
  accepts_nested_attributes_for :pages, allow_destroy: true
  has_many :books
  accepts_nested_attributes_for :books, allow_destroy: true
  has_one :cover, as: :covered
  has_one :background, as: :backgrounded
  has_one :custom_style, as: :styled
end
