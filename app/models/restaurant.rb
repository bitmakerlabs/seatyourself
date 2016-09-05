class Restaurant < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  belongs_to :cuisine
  belongs_to :owner, class_name: :user
  has_many :reservations
  has_many :users, through: :reservations
  validates :cuisine_id, :name, :description, :phone_number, :owner_id, :seats, :opens_at, :closes_at, :address, presence: true
  geocoded_by :address      #this can be Ip as well
  after_validation :geocode, if: :address_changed? #auto-fetch coordinates
end
