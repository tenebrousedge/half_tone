# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  def current_comic
    @current_comic ||= Comic.find_by(subdomain: request.subdomain)
  end
  helper_method :current_comic
  def pundit_user
    current_author
  end
end
