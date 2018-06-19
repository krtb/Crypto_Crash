class Buyer < ActiveRecord::Base

  has_many :assets
  has_many :crypto_trades
  has_many :sellers, through: :crypto_trades

  @@all = []

  def initialize(props = {})
    @name = props[:name]
    @cash = 1000
    @playing = true
    @score = @cash
    self.class.all << self
  end

  def self.all
    @@all
  end

end
