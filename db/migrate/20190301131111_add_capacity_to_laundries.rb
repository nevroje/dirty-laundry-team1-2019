class AddCapacityToLaundries < ActiveRecord::Migration[5.2]
  def change
    add_column :laundries, :capacity, :integer
  end
end
