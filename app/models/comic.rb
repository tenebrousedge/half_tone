class Comic
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :subtitle, type: String
  field :published_at, type: Timestamp
  embedded_in :author
  embeds_many :pages, as: :paged
  embeds_many :books, as: :booked
  has_one :cover as: :covered
  has_one :background as: :backgrounded
  has_one :custom_style as: :styled
end
