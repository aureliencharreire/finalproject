class AddPriceToLot < ActiveRecord::Migration
  def change
      add_column :lots, :price, :float
  end
end
