class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pigeon

  STATUS = ['pending', 'cancelled', 'approved']

  validates :address, presence: true
  validates :date, presence: true
  validates :message, presence: true
  validates :recipient_name, presence: true
  validates :option_droppings, inclusion: { in: [true, false] }
  validates :option_cooing, inclusion: { in: [true, false] }
  validates :status, inclusion: { in: STATUS }
end
