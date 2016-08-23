class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.references :booking
      t.references :user

      t.timestamps
    end
  end
end
