# frozen_string_literal: true

class Company < ApplicationRecord
  has_many :interventions
  validates :name, :siren, presence: true
  validates :siren, numericality: true, length: { is: 9 }
end