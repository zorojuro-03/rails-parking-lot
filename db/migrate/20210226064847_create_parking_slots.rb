class CreateParkingSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_slots do |t|
      t.string :name
      t.string :vehicle_number
      t.references :parking_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
