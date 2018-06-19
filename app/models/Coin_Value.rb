class Coin_Value < ActiveRecord::Base

  has_many :sellers
  
  @@all = []

  def initialize(coin_value, market_value)
    @coin_value = coin_value
    @market_value = market_value
    self.class.all << self
  end

  def self.all
    @@all
  end

end
