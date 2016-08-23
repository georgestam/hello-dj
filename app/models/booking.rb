class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  has_many :reviews

end
