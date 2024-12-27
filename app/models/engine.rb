class Engine < ApplicationRecord
  belongs_to :engineable, polymorphic: true
end
