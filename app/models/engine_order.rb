class EngineOrder < ApplicationRecord
  belongs_to :engine
  validate :honeypot_check

  def honeypot_check
    errors.add(:base, "Spam detected!") if extra_info.present?
  end
end
