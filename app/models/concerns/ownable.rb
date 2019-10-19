# frozen_string_literal: true

# namespace module
module HalfTone
  # associates record with creator/owner
  module Ownable
    extend ActiveSupport::Concern

    included do
      has_one :owner, class_name: :author
      field :owner_id, type: UUID
      validates_presence_of :owner_id
    end

    # check if user is the owner
    def owned_by?(author)
      author_id == author.id
    end
  end
end
