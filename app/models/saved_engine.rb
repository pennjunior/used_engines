class SavedEngine < ApplicationRecord
  belongs_to :user
  belongs_to :engine
  validates :user_id, uniqueness: { scope: :engine_id, message: "Already saved." }
end
