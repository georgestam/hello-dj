class Profile < ApplicationRecord

  belongs_to :user
  has_many :bookings

  validates :user_id, presence: true
  validates :dj_name, presence: true
  validates :bio, presence: true
  validates :price_hour, presence: true
  validates :photo, presence: true
  validates :soundcloud_link, format: { with: /https:\/\/soundcloud.com\/\w+$/,
message: "Must be in the form https:/soundcloud.com/YourUsername", multiline: true }

  mount_uploader :photo, PhotoUploader

end
