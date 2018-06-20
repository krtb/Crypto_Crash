class CryptoTrade < ActiveRecord::Base

  belongs_to :seller
  belongs_to :buyer

  def my_coin_value
    my_seller = self.seller
    my_seller.coin_value
  end

  def trade_value
    my_coin_value.market_value * self.coin_quantity
  end

end
