class Booking < ApplicationRecord

  validates :adress, presence: true
  validates :date, presence: true
  validates :message, presence: true, allow_blank: false
  validates :recipient_name, presence: true
  validates :option_droppings, presence: true, :default => false
  validates :option_cooing, presence: true, :default => false
end
