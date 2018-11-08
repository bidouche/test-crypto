require 'crypto.rb'

class HomeController < ApplicationController
  def new
  	@coin = Coin.new
  end


  def index
  	@coin = Coin.new
  	#@crypto = Crypto.new.perform
  	puts params
  end
end
