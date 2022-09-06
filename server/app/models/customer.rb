# frozen_string_literal: true

class Customer < ApplicationRecord
  has_many :interventions
  validates :name, :email, :phone, presence: true
  validates :email, email: {mode: :strict, require_fqdn: true}
end