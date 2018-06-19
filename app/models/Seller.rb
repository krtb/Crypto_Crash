class Seller < ActiveRecord::Base
  belongs_to :coin_value
  has_many :crypto_trades
  has_many :buyers, through: :crypto_trades

end
