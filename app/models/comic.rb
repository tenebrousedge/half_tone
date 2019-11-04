class Comic
  include Mongoid::Document
  include Mongoid::Timestamps
  include Ownable
  field :title, type: String
  validates_presence_of :title
  field :subtitle, type: String
  embedded_in :author
  embeds_many :pages, as: :paged, inverse_of: :page
  accepts_nested_attributes_for :pages, allow_destroy: true
  embeds_many :books, as: :booked
  accepts_nested_attributes_for :books, allow_destroy: true
  has_one :cover, as: :covered
  has_one :background, as: :backgrounded
  has_one :custom_style, as: :styled
end
