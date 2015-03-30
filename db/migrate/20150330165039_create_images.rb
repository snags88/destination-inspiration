class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :url
      t.text :source
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :locations
  end
end
