class Seller < ActiveRecord::Base
  belongs_to :coin_value
  has_many :crypto_trades
  has_many :buyers, through: :crypto_trades  

  @@all = []

  def initialize(props = {})
    @name = props[:name]
    @coin_value_id = props[:coin_value_id]
    self.class.all << self
  end

  def self.all
    @@all
  end

end
