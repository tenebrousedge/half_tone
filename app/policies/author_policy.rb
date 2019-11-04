# frozen_string_literal: true

class AuthorPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show_in_app?
    true
  end
end
