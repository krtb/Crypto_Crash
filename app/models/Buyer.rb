require 'pry'

class Buyer < ActiveRecord::Base

  has_many :assets
  has_many :crypto_trades
  has_many :sellers, through: :crypto_trades

  def trade(seller_id, coin_quantity)
    CryptoTrade.create(seller_id: seller_id, buyer_id: self.id, coin_quantity: coin_quantity)
  end

  def declare_assets(asset_name1 = "your soul", asset_name2 = "your house", asset_name3 = "your pet")
    Asset.create(name: asset_name1.downcase, value: 1000, buyer_id: self.id)
    Asset.create(name: asset_name2.downcase, value: 750, buyer_id: self.id)
    Asset.create(name: asset_name3.downcase, value: 500, buyer_id: self.id)
  end

  def sell_assets(asset_name)
    asset = Asset.find_by(name: asset_name.downcase)
    self.increment(:cash, by = asset.value)
    self.save
    asset.destroy
  end

#Helper Method
  def find_my_seller(crypto_trade_instance)
    crypto_trade_instance.seller
  end
#

#Helper Method
  def find_seller_coin(crypto_trade_instance)
    find_my_seller(crypto_trade_instance).coin_value
  end
#

  def find_coin_market_value(crypto_trade_instance)
    find_seller_coin(crypto_trade_instance).market_value
  end

  def my_coins
    #will show you your coins
    # Bitcoin: 6 coins at a price of $0 each = $0
  end



end
