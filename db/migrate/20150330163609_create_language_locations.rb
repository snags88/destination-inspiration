class CreateLanguageLocations < ActiveRecord::Migration
  def change
    create_table :language_locations do |t|
      t.references :language, index: true
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :language_locations, :languages
    add_foreign_key :language_locations, :locations
  end
end
