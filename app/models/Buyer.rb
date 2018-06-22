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
      puts "You're out of money!"
      our_trade.delete
    else
      our_trade.save
      check = self.cash
      check2 = self.update(cash: ( check - our_trade.trade_value))
      puts "You've bought #{coin_quantity} #{find_seller_coin(our_trade).coin_name} at a price of $#{-1 * (-our_trade.trade_value)}."
    end
  end

  def declare_assets(asset_name1 = "your soul", asset_name2 = "your house", asset_name3 = "your pet")
    Asset.create(name: asset_name1.downcase, value: 1000, buyer_id: self.id)
    Asset.create(name: asset_name2.downcase, value: 750, buyer_id: self.id)
    Asset.create(name: asset_name3.downcase, value: 500, buyer_id: self.id)
  end

  def view_assets
    asset_array = self.assets
    asset_array.each do |asset|
      puts "#{asset.name} worth $#{asset.value}"
    end
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

  def my_trades
    CryptoTrade.all.select do |crypto_instance|
      crypto_instance.buyer == self
    end
  end

  def my_coins
    #will show you your coins

    my_trades.map do |a_trade|
      a_trade.my_coin_name
    end.uniq
  end

  def my_wallet
    # Bitcoin: 6 coins at a price of $0 each = $0
    wallet_hash = {}
    my_coins.each do |coin_string|
      counter = 0
      my_trades.each do |trade|
        if trade.my_coin_name == coin_string
          counter += trade.coin_quantity
        end
      end
      wallet_hash[coin_string] = counter
    end
    # return wallet_hash
    wallet_hash.each do |key, value|
      return "#{key}: #{value} coin(s) at a price of $#{value * (CryptoTrade.coin_price(key))}"
    end
  end

  def view_coin_market
    Seller.all.each do |seller|
      puts "#{seller.id}. #{seller.name} is selling #{seller.coin_value.coin_name} at a price of $#{seller.coin_value.market_value} per coin."
    end
    return "Select your coin..."
  end

end
