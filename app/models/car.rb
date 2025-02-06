class Car < ApplicationRecord
  extend FriendlyId
  include PgSearch::Model
  friendly_id :slug_candidates, use: :slugged

  has_many :car_orders, dependent: :destroy
  has_many_attached :photos
  has_many :saved_cars, dependent: :destroy
  has_many :users, through: :saved_cars

  def slug_candidates
    [
      [:make, :model, :year]
      # [:make, :model, :year, :id] # Fallback in case of duplicates
    ]
  end


  pg_search_scope :search_by_details,
    against: [:make, :model, :year],
    using: {
      tsearch: { prefix: true } # Allows partial matches (e.g., "Hon" matches "Honda")
    }

end
