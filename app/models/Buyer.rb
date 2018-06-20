require 'pry'

class Buyer < ActiveRecord::Base

  has_many :assets
  has_many :crypto_trades
  has_many :sellers, through: :crypto_trades



  def my_cash
    self.cash
  end

  def trade(seller_id, coin_quantity)
    our_trade = CryptoTrade.new(seller_id: seller_id, buyer_id: self.id, coin_quantity: coin_quantity)

    if our_trade.trade_value > my_cash
      return "You're out of money!"
      our_trade.delete
    else
      our_trade.save
      self.increment(:cash, by = -our_trade.trade_value)
      return "You've bought #{coin_quantity} #{find_seller_coin(our_trade).coin_name} at a price of $#{-1 * (-our_trade.trade_value)}."
    end
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
