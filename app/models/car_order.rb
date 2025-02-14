class CarOrder < ApplicationRecord
  belongs_to :car
  validate :honeypot_check

  def honeypot_check
    errors.add(:base, "Spam detected!") if extra_info.present?
  end
  # validates :name, :email, :phone, :location, presence: true
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :phone, numericality: true, length: { minimum: 10, maximum: 15 }

end
