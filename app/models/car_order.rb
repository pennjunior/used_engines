class CarOrder < ApplicationRecord
  belongs_to :car


  validates :name, :email, :phone, :location, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone, numericality: true, length: { minimum: 10, maximum: 15 }

end
