class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :name
      t.datetime :time_slot

      t.timestamps
    end
  end
end
