class CoinsController < ApplicationController
 def new
  	@coin = Coin.new
  end


  def index
  	@coin = Coin.new
  	#@crypto = Crypto.new.perform
  	
  end
end
