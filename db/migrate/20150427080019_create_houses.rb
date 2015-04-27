class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :hse_type
      t.integer :price
      t.string :location
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
