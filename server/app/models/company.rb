class Company < ApplicationRecord
  validates :name, :siren, presence: true
  validates :siren, numericality: true, length: { is: 9 }
end