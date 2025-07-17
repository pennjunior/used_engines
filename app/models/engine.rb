class Engine < ApplicationRecord
  

  # handles he slugs for friendly domain
  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]

  def slug_candidates
    [
      :title,
      [:title, :manufacturer]
    ]
  end
  def manufacturer
    engineable.try(:manufacturer)
  end

  #handles associations
  belongs_to :engineable, polymorphic: true
  has_many :engine_orders, dependent: :destroy

  

  
  has_many :carts, through: :line_items

  accepts_nested_attributes_for :engineable

  #performs general search in the pg database
  include PgSearch::Model
  pg_search_scope :search_by_details,
    against: [:title, :engineable_type, :description],
    using: {
      tsearch: { prefix: true } # Allows partial matches (e.g., "Hon" matches "Honda")
    }
end
