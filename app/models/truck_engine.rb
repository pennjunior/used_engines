class TruckEngine < ApplicationRecord
  # include PgSearch::Model

  # extend FriendlyId
  # friendly_id :model, use: :slugged

  has_one :engine, as: :engineable, dependent: :destroy
  has_many_attached :photos

# multisearchable against: [ :towing_capacity, :engine_type, :fuel_type, :manufacturer ]
end
