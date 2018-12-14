class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :menu_items
    validates :name, presence: true
    validates :address, presence: true
    validates :category, presence: true
    validates :neighbourhood, presence: true
    validates :open_from, presence: true
    # validates :open_from, numericality: true
    validates :open_until, presence: true
    # validates :open_until, numericality: true
    validates :price_range, presence: true
    validates :price_range, numericality: true
    validates :capacity, presence: true
    validates :capacity, numericality: true
    validates :max_reservation_size, presence: true
    validates :max_reservation_size, presence: true
    #validates :name and address, uniqueness: true? wtf
  end
