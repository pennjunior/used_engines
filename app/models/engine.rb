class Engine < ApplicationRecord
  include PgSearch::Model
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :engineable, polymorphic: true
  pg_search_scope :search_by_details,
    against: [:title, :year, :manufacturer],
    using: {
      tsearch: { prefix: true } # Allows partial matches (e.g., "Hon" matches "Honda")
    }
end
