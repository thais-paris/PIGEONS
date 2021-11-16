class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pigeon

  validates :address, presence: true
  validates :date, presence: true
  validates :message, presence: true
  validates :recipient_name, presence: true
  validates :option_droppings, presence: true
  validates :option_cooing, presence: true
end
