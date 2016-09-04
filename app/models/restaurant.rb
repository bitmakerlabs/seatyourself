class Restaurant < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :owner, class_name: :user
  has_many :reservations
  has_many :users, through: :reservations
  validates :cuisine_id, presence: true
  geocoded_by :address      #this can be Ip as well
  after_validation :geocode, if: :address_changed? #auto-fetch coordinates
end
