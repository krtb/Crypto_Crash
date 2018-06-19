class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string :name
      t.integer :cash
      t.boolean :playing?
      t.integer :score
    end
  end
end
