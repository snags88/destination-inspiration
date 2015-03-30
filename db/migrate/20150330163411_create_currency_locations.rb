class CreateCurrencyLocations < ActiveRecord::Migration
  def change
    create_table :currency_locations do |t|
      t.references :currency, index: true
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :currency_locations, :currencies
    add_foreign_key :currency_locations, :locations
  end
end
