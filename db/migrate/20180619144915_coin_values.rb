class CoinValues < ActiveRecord::Migration[5.0]
  def change
    create_table :coin_values do |t|
      t.string :coin_name
      t.integer :market_value
    end
  end
end
