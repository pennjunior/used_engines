class CarOrder < ApplicationRecord
  belongs_to :car

  attr_accessor :honeypot
  validates :name, :email, :phone, :location, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, numericality: true, length: { minimum: 10, maximum: 15 }
  validate :honeypot_check

  def honeypot_check
    errors.add( :honeypot, "This field must be empty") unless honeypot.blank?
  end
end
