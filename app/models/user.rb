class User < ApplicationRecord

  has_many :reviews
  has_many :profiles
  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :full_name, presence: true, on: :update
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/


end
