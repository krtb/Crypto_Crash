class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :value
      t.belongs_to :buyer
    end
  end
end
