class CarEngine < ApplicationRecord
  include PgSearch::Model

  # extend FriendlyId
  # friendly_id :model, use: :slugged

  has_one :engine, as: :engineable, dependent: :destroy
  has_many_attached :photos

  accepts_nested_attributes_for :engine, update_only: true
end
