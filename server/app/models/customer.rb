class Customer < ApplicationRecord
  validates :name, :email, :phone, presence: true
  validates :email,email: {mode: :strict, require_fqdn: true}
end