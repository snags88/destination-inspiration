class AddZilyoIdToLodging < ActiveRecord::Migration
  def change
    add_column :lodgings, :zilyo_id, :string
  end
end
