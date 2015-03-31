class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.integer :month_number
      t.string :month_name
      t.integer :high_temp
      t.integer :low_temp
      t.integer :location_id
      t.timestamps null: false
    end
  end
end
