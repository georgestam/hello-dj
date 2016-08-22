class CreateDjProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :dj_profiles do |t|
      t.string :name
      t.integer :user_id
      t.string :bio
      t.string :soundcloud_link
      t.string :price_hour

      t.timestamps
    end
  end
end
