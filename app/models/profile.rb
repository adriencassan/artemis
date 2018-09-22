class Profile < ApplicationRecord
  has_one :user
  has_many :stock_ratings


  def my_analyse(stock)
    stock_ratings.order(created_at: desc).first.value || "Neutral"
  end
end
