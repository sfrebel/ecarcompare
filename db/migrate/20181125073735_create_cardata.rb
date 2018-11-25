class CreateCardata < ActiveRecord::Migration[5.1]
  def change
    create_table :cardata do |t|
      t.string :name
      t.float :base_price
      t.float :battery_capacity
      t.float :range

      t.timestamps
    end
  end
end
