class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :engine

  def total
    engine.price * quantity 
  end
end