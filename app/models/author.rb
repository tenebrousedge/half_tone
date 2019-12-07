# frozen_string_literal: true

# main user class
class Author < ApplicationRecord
  # include ::Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :trackable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :omniauthable, :confirmable

  has_many :comic
  accepts_nested_attributes_for :comic, allow_destroy: true
end
