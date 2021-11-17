class Pigeon < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  BREEDS = ['ramier', 'biset', 'vert', 'victoria', 'frisé', 'bleu couronné', 'ailes de bronze', 'jacobin', 'indien', 'vert africain', 'plumifère', 'nicobar' ]
  has_one_attached :photo

  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_day, presence: true
  validates :breed, inclusion: { in: BREEDS }
end
