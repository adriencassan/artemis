class StocksController < ApplicationController

  def index
    @stocks = policy_scope(Stock)
    @stock = policy_scope(Stock).find(params[:id])
    @stock_rating_new = StockRating.new
  end
end
