class CreateInterventions < ActiveRecord::Migration[6.1]
  def change
    create_table :interventions do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.timestamp :started_at, null: false
      t.text :address, null: false
      t.string :zipcode, null: false
      t.string :city, null: false
      t.integer :total_panels, null: false
      t.integer :type_panel, null: false
      t.string :ref_panel, null: false

      t.timestamps
    end
  end
end