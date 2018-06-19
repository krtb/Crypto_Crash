class Buyer < ActiveRecord::Base

  has_many :assets
  has_many :crypto_trades
  has_many :sellers, through: :crypto_trades


end
