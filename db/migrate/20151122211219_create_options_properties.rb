class CreateOptionsProperties < ActiveRecord::Migration
  def change
    create_table :options_properties do |t|
      t.integer :option_id
      t.integer :property_id

      t.timestamps null: false
    end
  end
end
