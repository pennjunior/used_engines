class Engine < ApplicationRecord
  

  # handles he slugs for friendly domain
  extend FriendlyId
  friendly_id :generate_slug, use: [:slugged, :finders]

  def generate_slug
    title.present? ? title.parameterize : "engine-#{SecureRandom.hex(4)}"
  end

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

  #handles associations
  belongs_to :engineable, polymorphic: true
  has_many :engine_orders, dependent: :destroy

  #performs general search in the pg database
  include PgSearch::Model
  pg_search_scope :search_by_details,
    against: [:title, :year, :manufacturer],
    using: {
      tsearch: { prefix: true } # Allows partial matches (e.g., "Hon" matches "Honda")
    }
end
