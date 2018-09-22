class StockRating < ApplicationRecord
  belongs_to :profile
  belongs_to :stock
end
