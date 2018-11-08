require 'open-uri'
require 'nokogiri'


class Crypto
	def initialize
		@cryptoname = []
		doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
		doc.xpath('//td[3]').each do |node|
		  @cryptoname << node.text
		end
		@cryptoprice = []
		doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
		doc.xpath('//td[5]/a').each do |node|
		   @cryptoprice << node.text
		end
	
		@myhash = {}
		@cryptoname.zip(@cryptoprice) {|a, b| @myhash[a] = b}
		@myhash

	end
	def save
			i = 0
	while (i < @myhash.keys.length)
		Coin.create(name: @myhash.keys[i], value: @myhash.values[i])
		i += 1
	end
		
	end
	def perform
		save

	end
end