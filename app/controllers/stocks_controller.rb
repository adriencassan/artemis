class StocksController < ApplicationController

  def index
    @stocks = policy_scope(Stock).order(:name)
    @stock = policy_scope(Stock).find(params[:id]) unless params[:id].nil?
    @stock_rating_new = StockRating.new
  end
end
