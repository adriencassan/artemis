class Profile < ApplicationRecord
  has_one :user
  has_many :stock_ratings


  def my_analyse(stock)
    analyse = stock_ratings.where(stock: stock).order(created_at: :desc).first
    analyse.nil? ? "Neutral" : analyse.value
  end

  def initials
    first_name[0].to_s + last_name[0].to_s
  end
end
