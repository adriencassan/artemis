class Profile < ApplicationRecord
  has_one :user
  has_many :stock_analyses
end
