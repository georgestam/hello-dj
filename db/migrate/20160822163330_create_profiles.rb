class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :dj_name
      t.string :bio
      t.string :soundcloud_link
      t.integer :price_hour

      t.timestamps
    end
  end
end
