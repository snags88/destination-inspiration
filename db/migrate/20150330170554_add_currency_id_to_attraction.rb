class AddCurrencyIdToAttraction < ActiveRecord::Migration
  def change
    add_reference :attractions, :currency, index: true
    add_foreign_key :attractions, :currencies
  end
end
