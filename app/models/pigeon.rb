class Pigeon < ApplicationRecord
  BREEDS = ['ramier', 'biset', 'vert', 'victoria', 'frisé', 'bleu couronné', 'ailes de bronze', 'jacobin', 'indien', 'vert africain', 'plumifère', 'nicobar' ]
  has_one_attached :photo

  belongs_to :user

  validates :name, presence: true
  validates :adress, presence: true
  validates :description, presence: true
  validates :price_day, presence: true
  validates :breed, inclusion: { in: BREEDS }
end
