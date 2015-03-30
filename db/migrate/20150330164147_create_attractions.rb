class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.text :description
      t.string :attraction_type
      t.float :fee
      t.text :fee_detail
      t.references :location, index: true

      t.timestamps null: false
    end
    add_foreign_key :attractions, :locations
  end
end
