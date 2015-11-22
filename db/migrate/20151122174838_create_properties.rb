class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name, limit: 50
      t.decimal :area, scale: 2, precision: 15, default: 0
      t.decimal :price, scale: 2, precision: 15, default: 0
      t.text :description
      t.integer :interest
      t.boolean :status, default: true
      t.integer :user_id
      t.integer :bed_rooms
      t.integer :bath_rooms
      t.string :address, limit: 100
      t.integer :county_id
      t.integer :state_id
      t.integer :city_id
      t.string :latitude, limit: 50
      t.string :longitude, limit: 50
      t.string :video_url, limit: 150
      t.integer :property_type_id

      t.timestamps null: false
    end
  end
end
