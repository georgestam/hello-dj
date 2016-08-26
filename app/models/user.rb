class User < ApplicationRecord

  has_many :reviews
  has_many :profiles
  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploader :photo, PhotoUploader

end
