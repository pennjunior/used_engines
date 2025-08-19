class EngineOrder < ApplicationRecord
  belongs_to :engine
  validate :honeypot_check
  validates :name, presence: true, length: { maximum: 100 }

  # Email: must be present, unique, and a valid format
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email" }

  # Phone: must be present and match a phone number pattern
  validates :phone, presence: true,
                    format: { with: /\A[\d\+\-\.\(\) ]+\z/, message: "only allows valid phone numbers" }

  # Location: optional, but limit length
  validates :location, length: { maximum: 255 }, allow_blank: true
  def honeypot_check
    errors.add(:base, "Spam detected!") if extra_info.present?
  end
end
