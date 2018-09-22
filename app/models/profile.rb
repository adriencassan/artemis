class Profile < ApplicationRecord
  has_one :user
  has_many :stock_analysis
end
