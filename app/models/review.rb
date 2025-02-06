class Review < ApplicationRecord
  has_one_attached :photo

  validates :title, :content, :rating, :name, :review_date, presence: true
  validates :rating, inclusion: { in: 1..5, message: "must be between 1 and 5" }
end
