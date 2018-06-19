class Crypto_Trade < ActiveRecord::Base

  belongs_to :seller
  belongs_to :buyer

end
