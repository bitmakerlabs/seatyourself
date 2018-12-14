class MenuItem < ApplicationRecord
    belongs_to :restaurant
    validates :dish, presence: true
    validates :rest_id, presence: true
    validates :price, presence: true
    validates :price, numericality: true
end
