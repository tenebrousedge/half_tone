# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  # before_filter :reload_rails_admin, if: :rails_admin_path?
#
  # def reload_rails_admin
    # %W(Author Comic Background Book Cover CustomStyle Page).each do |m|
      # RailsAdmin::Config.reset_model(m)
    # end
    # RailsAdmin::Config::Actions.reset
    # load("#{Rails.root}/config/initializers/rails_admin.rb")
  # end
  # def rails_admin_path?
    # controller_path =~ /rails_admin/ && Rails.env.development?
  # end

  def current_comic
    @current_comic ||= Comic.find_by(subdomain: request.subdomain)
  end
  helper_method :current_comic
  def pundit_user
    current_author
  end
end
