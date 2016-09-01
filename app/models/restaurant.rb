class Restaurant < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :owner, class_name: :user
  has_many :reservations
  has_many :users, through: :reservations
end
