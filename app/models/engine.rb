class Engine < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId
  friendly_id :generate_slug, use: [:slugged, :finders]

  def generate_slug
    title.present? ? title.parameterize : "engine-#{SecureRandom.hex(4)}"
  end

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

  belongs_to :engineable, polymorphic: true
  has_many :engine_orders, dependent: :destroy
  pg_search_scope :search_by_details,
    against: [:title, :year, :manufacturer],
    using: {
      tsearch: { prefix: true } # Allows partial matches (e.g., "Hon" matches "Honda")
    }
end
