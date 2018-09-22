class Stock < ApplicationRecord
  has_many :stock_ratings

  def buy_profiles
    Profile.where(active: true).select{|profile| profile.my_analyse(self) == "Buy"}
  end

  def neutral_profiles
    Profile.where(active: true).select{|profile| profile.my_analyse(self) == "Neutral"}
  end

  def sell_profiles
    Profile.where(active: true).select{|profile| profile.my_analyse(self) == "Sell"}
  end
end
