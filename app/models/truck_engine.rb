class TruckEngine < ApplicationRecord
  has_one :engine, as: :engineable, dependent: :destroy
end
