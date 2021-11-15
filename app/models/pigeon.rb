class Pigeon < ApplicationRecord
  validates :name, presence: true
  validates :adress, presence: true
  validates :description, presence: true
  validates :price_day, presence: true
end
