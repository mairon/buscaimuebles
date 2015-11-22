class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name, limit: 30
      t.boolean :status, default: true

      t.timestamps null: false
    end
  end
end
