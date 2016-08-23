class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  has_many :reviews

  validates :user_id, presence: true
  validates :date, presence: true
  validates :booking_address, presence: true
  validates :time, presence: true

end
