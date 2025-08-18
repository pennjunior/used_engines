class Cart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy
  has_many :engines, through: :line_items

  has_many :purchases

  def total
    line_items.to_a.sum(&:total)
  end
end
