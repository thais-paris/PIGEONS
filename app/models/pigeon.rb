class Pigeon < ApplicationRecord
  BREED = ['ramier', 'biset', 'vert', 'victoria', 'frisé', 'bleu couronné', 'ailes de bronze', 'jacobin', 'indien', 'vert africain', 'plumifère', 'nicobar' ]

  validates :name, presence: true
  validates :adress, presence: true
  validates :description, presence: true
  validates :price_day, presence: true
  validates :breed, inclusion: { in: BREED }
end
