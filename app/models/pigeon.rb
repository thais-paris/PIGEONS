class Pigeon < ApplicationRecord
  BREEDS = ['ramier', 'biset', 'vert', 'victoria', 'frisé', 'bleu couronné', 'ailes de bronze', 'jacobin', 'indien', 'vert africain', 'plumifère', 'nicobar' ]

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_day, presence: true
  validates :breed, inclusion: { in: BREEDS }
end
