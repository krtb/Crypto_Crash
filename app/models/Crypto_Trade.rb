class CryptoTrade < ActiveRecord::Base

  belongs_to :seller
  belongs_to :buyer

end
