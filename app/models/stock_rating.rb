class StockRating < ApplicationRecord
  belongs_to :profile
  belongs_to :stock

  def ago
    (Date.today - self.created_at.to_date).to_i
  end

  def color_tag
    if value == "Buy"
      "green"
    elsif value == "Neutral"
      "gray"
    else
      "red"
    end
  end
end
