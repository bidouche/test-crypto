class Coin < ApplicationRecord
validates_uniqueness_of :name , presence: true
end
