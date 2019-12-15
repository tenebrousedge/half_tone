# frozen_string_literal: true

class ComicPolicy < ApplicationPolicy
  def destroy?
    true
  end
  class Scope < Scope
  end
end
