class StockRating < ApplicationRecord
  belongs_to :profile
  belongs_to :stock

  def create
  end
end
