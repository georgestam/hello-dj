class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.refrences :profile
      t.date :date
      t.string :booking_address
      t.time :time

      t.timestamps
    end
  end
end
