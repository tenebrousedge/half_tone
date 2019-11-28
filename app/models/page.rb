# frozen_string_literal: true

# Page class
class Page
  publishable
  belongs_to :pageable, polymorphic: true
  has_one_attached_file :image
end
