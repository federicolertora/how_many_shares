class CreateStockSymbols < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_symbols do |t|
      t.float :dollar_amount
      t.float :stock_price

      t.timestamps
    end
  end
end
