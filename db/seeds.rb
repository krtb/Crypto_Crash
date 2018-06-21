require_relative '../app/models/coin_value.rb'
require_relative '../app/models/asset.rb'
require_relative '../app/models/buyer.rb'
require_relative '../app/models/seller.rb'
require_relative '../app/models/crypto_trade.rb'

CoinValue.delete_all
Seller.delete_all
Buyer.delete_all
Asset.delete_all
CryptoTrade.delete_all

ethereum = CoinValue.create(coin_name: "Ethereum", market_value: 540)
bitcoin = CoinValue.create(coin_name: "Bitcoin", market_value: 6700)
ripple = CoinValue.create(coin_name: "Ripple", market_value: 1000)
litecoin = CoinValue.create(coin_name: "Litecoin", market_value: 250)
tron = CoinValue.create(coin_name: "Tron", market_value: 400)

eddie_ethereum = Seller.create(name: "Eddie Ethereum", coin_value_id: ethereum.id)
bobby_bitcoin = Seller.create(name: "Bobby Bitcoin", coin_value_id: bitcoin.id)
randy_ripple = Seller.create(name: "Randy Ripple", coin_value_id: ripple.id)
lisa_litecoin = Seller.create(name: "Lisa Litecoin", coin_value_id: litecoin.id)
teddy_tron = Seller.create(name: "Teddy Tron", coin_value_id: tron.id)

# noah = Buyer.create(name: "Noah", cash: 1000, playing?: true, score: nil)
# kurt = Buyer.create(name: "Kurt", cash: 1000, playing?: true, score: nil)
# rickross = Buyer.create(name: "RickRoss", cash: 1000, playing?: true, score: nil)
#
#noah.trade(eddie_ethereum.id, 1)
# # did not work becuase were out of money
#
# noah.declare_assets("my soul", "my feet", "puppies")
# noah.sell_assets("my soul")


p "created the seeds"
