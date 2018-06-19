require_relative '../app/models/Coin_Value.rb'

ethereum = Coin_Value.create(coin_name: "Ethereum", market_value: 540)
bitcoin = Coin_Value.create(coin_name: "Bitcoin", market_value: 6700)
ripple = Coin_Value.create(coin_name: "Ripple", market_value: 1000)
litecoin = Coin_Value.create(coin_name: "Litecoin", market_value: 250)
tron = Coin_Value.create(coin_name: "Tron", market_value: 400)

eddie_ethereum = Seller.create(name: "Eddie Ethereum", coin_value_id: ethereum.id)
bobby_bitcoin = Seller.create(name: "Bobby Bitcoin", coin_value_id: bitcoin.id)
randy_ripple = Seller.create(name: "Randy Ripple", coin_value_id: ripple.id)
lisa_litecoin = Seller.create(name: "Lisa Litecoin", coin_value_id: litecoin.id)
teddy_tron = Seller.create(name: "Teddy Tron", coin_value_id: tron.id)

noah = Buyer.create(name: "Noah", cash: 1000, playing?: true, score: nil)
kurt = Buyer.create(name: "Kurt", cash: 1000, playing?: true, score: nil)
rickross = Buyer.create(name: "RickRoss", cash: 1000, playing?: true, score: nil)



p "created the seeds"
