# frozen_string_literal: true

class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.float :base_price
      t.float :battery_capacity
      t.float :range

      t.timestamps
    end
  end
end
