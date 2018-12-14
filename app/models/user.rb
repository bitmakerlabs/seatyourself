class User < ApplicationRecord
    has_many :restaurants
    has_many :reservations
    has_many :menu_items, :through restaurant
end
