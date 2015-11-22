class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name, limit: 30
      t.boolean :status, default: true

      t.timestamps null: false
    end
  end
end
