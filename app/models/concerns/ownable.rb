# frozen_string_literal: true

module Ownable
  extend ActiveSupport::Concern

  included do
    has_one :author
    validates_associated :owner
    # s = self.class
    # Author.class_eval do
    #   has_many s.to_s.downcase.pluralize.to_sym
    # end
  end

  # check if user is the owner
  def owned_by?(author)
    author_id == author.id
  end
end
