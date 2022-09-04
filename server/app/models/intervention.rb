class Intervention < ApplicationRecord
  belongs_to :customer
  belongs_to :company
  enum type_panel: [:photovoltaic, :hybrid]
  validates :ref_panel, :type_panel, :address, :zipcode, :city, presence: true
  validates :ref_panel, numericality: true, length: { is: 6 }

  before_create :set_type_panel_default

  private
  def set_type_panel_default
    self.type_panel = :photovoltaic
  end
end