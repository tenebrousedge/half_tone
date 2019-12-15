# frozen_string_literal: true

# class for collections of pages
class Book < ApplicationRecord
  include Ownable
  include Styleable
  include Coverable
  include Pageable
  belongs_to :comic
end
