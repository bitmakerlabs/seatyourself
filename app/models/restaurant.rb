class Restaurant < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true
  validates :price, presence: true
  validates :capacity, presence: true


  belongs_to :user
  has_many :bookings


end
