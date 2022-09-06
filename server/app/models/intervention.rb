# frozen_string_literal: true

class Intervention < ApplicationRecord
  belongs_to :customer
  belongs_to :company
  enum type_panel: [:photovoltaic, :hybrid]

  validates :started_at, :total_panels, :ref_panel, :address, :zipcode, :city, presence: true
  validates :total_panels, :ref_panel, numericality: true
  validates :ref_panel, length: { is: 6 }

  before_validation :set_type_panel_default
  accepts_nested_attributes_for :customer, :company

  private
  def set_type_panel_default
    self.type_panel ||= :photovoltaic
  end
end