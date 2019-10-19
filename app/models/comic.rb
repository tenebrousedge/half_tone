class Comic
  include Mongoid::Document
  include Mongoid::Timestamps
  include HalfTone::Ownable
  field :title, type: String
  field :subtitle, type: String
  embedded_in :author
  embeds_many :pages, as: :paged
  embeds_many :books, as: :booked
  has_one :cover, as: :covered
  has_one :background, as: :backgrounded
  has_one :custom_style, as: :styled

  rails_admin do
    configure :author do
      label 'Creator of this comic: '
    end
  end
end
