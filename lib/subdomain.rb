# frozen_string_literal: true

# helper class to support subdomain routing
class Subdomain
  # check if the request is for a subdomain
  def self.matches?(request)
    own_subdomains = %w[www img mail blog shop ftp docs mx forum admin store
                        cdn app]
    request.subdomain.present? && !own_subdomains.include?(request.subdomain)
  end
end
