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

  def available?(party_size, time, date)
    if party_size == nil || time == nil
    else
      party_size > 0 && available_seats(time, date) >= party_size
    end
  end

  def available_seats(time, date)
    seats - reservations_at(time, date).sum(:party_size)
  end

  def reservations_at(time, date)
    reservations.where(time: time.beginning_of_hour..time.end_of_hour, date: date)
  end
end
