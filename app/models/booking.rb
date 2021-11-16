class Booking < ApplicationRecord

  validates :address, presence: true
  validates :date, presence: true
  validates :message, presence: true
  validates :recipient_name, presence: true
  validates :option_droppings, presence: true, :default => false
  validates :option_cooing, presence: true, :default => false
end
