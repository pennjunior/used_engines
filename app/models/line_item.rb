class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :engine

  def total
    (engine.price || 0) * (quantity || 0)
  end
end