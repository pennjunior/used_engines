module Carts 
  class PurchasesController < ApplicationController
    before_action :set_engines
    def new
    end

    def success
    end

    private
    def set_engines
      @carts = @cart.line_items.includes(:engine)
    end
  end
end