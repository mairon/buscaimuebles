class CreatePropertyOptions < ActiveRecord::Migration
  def change
    create_table :property_options do |t|
      t.integer :property_id
      t.integer :option_id
      t.timestamps null: false
    end
  end
end
