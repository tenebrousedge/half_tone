# frozen_string_literal: true

module Ownable
  extend ActiveSupport::Concern

  included do
    has_one :owner, class_name: :Author
    validates_associated :owner
    # s = self.class
    # Author.class_eval do
    #   embeds_many s.to_s.downcase.to_sym
    # end
  end

  # check if user is the owner
  def owned_by?(author)
    author_id == author.id
  end
end
