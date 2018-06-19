class AddCoinQuantityToCryptoTrades < ActiveRecord::Migration[5.2]
  def change
    add_column :crypto_trades, :coin_quantity, :integer
  end
end
