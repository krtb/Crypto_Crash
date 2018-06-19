class CreateCryptoTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :crypto_trades do |t|
      t.belongs_to :buyer
      t.belongs_to :seller
    end
  end
end
