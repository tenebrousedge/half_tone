# frozen_string_literal: true

# class for collections of pages
class Book
  include Styleable
  include Coverable
  include Pageable
  belongs_to :comic
end
