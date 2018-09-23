class StockRatingsController < ApplicationController

  def create
    @stock = Stock.find(params[:stock_id])
    @stock_rating = StockRating.new()
    authorize @stock_rating
    @stock_rating.update(stock_rating_params)
    @stock_rating.profile = current_user.profile
    @stock_rating.stock = @stock
    if @stock_rating.save
      redirect_to stocks_path(id: @stock.id)
    else
      @stocks = policy_scope(Stock)
      @stock_rating_new = @stock_rating
      render "stocks/index"
    end
  end


  private

  def stock_rating_params
    params.require(:stock_rating).permit(:value, :analysis)
  end
end
