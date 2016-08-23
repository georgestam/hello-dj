class Review < ApplicationRecord

belongs_to :booking

validates :rating,  inclusion: { in: [1...5], allow_nil: false }
validates :user_id, presence: true
validates :booking_id, presence: true

end
