class CreateLaundries < ActiveRecord::Migration[5.2]
  def change
    create_table :laundries do |t|
      t.text :schedule

      t.timestamps
    end
  end
end
