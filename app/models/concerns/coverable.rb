module Coverable
  extend ActiveSupport::Concern

  included do
    has_one_attached :cover
  end
end