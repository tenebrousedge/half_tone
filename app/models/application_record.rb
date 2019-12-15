# frozen_string_literal: true

# main model class, automatically generated
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  after_validation :log_errors, if: ->(m){ m.errors }

  def log_errors
    Rails.logger.debug self.errors.full_messages.join("\n")
  end
end
