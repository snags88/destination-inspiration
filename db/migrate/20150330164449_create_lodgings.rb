class CreateLodgings < ActiveRecord::Migration
  def change
    create_table :lodgings do |t|
      t.string :name
      t.text :description
      t.float :nightly_cost
      t.integer :capacity
      t.string :lodging_type
      t.text :booking_url
      t.references :currency, index: true
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :lodgings, :currencies
    add_foreign_key :lodgings, :locations
  end
end
