class RenameCapacityOnLodgings < ActiveRecord::Migration
  def change
    rename_column :lodgings, :capacity, :num_of_beds
  end
end
