# frozen_string_literal: true

class AddColumnsToCas < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :brand, :string
    add_column :cars, :dc_charging, :float
    add_column :cars, :ac_charging, :float
    add_column :cars, :plug_type, :integer
    add_column :cars, :consumption, :integer
    add_column :cars, :rental_battery, :integer
    add_column :cars, :top_speed, :float
    add_column :cars, :continuous_speed, :float
    add_column :cars, :acceleration, :float
    add_column :cars, :seats, :integer
    add_column :cars, :frunk_space, :float
    add_column :cars, :trunk_space, :float
    add_column :cars, :frunk_space_big, :float
    add_column :cars, :weight, :float
    add_column :cars, :battery_voltage, :float
    add_column :cars, :camper_mode, :boolean
    add_column :cars, :interiour_sounds, :float
    add_column :cars, :exteriour_sounds, :float
    add_column :cars, :drive_axle, :integer
    add_column :cars, :max_power, :integer
    add_column :cars, :max_regen, :integer
    add_column :cars, :battery_temp_control, :integer
    add_column :cars, :battery_cell_type, :integer
    add_column :cars, :battery_chemistry, :integer
    add_column :cars, :motor_type, :integer
    add_column :cars, :charging_network, :integer
    add_column :cars, :towing_capacity, :integer
    add_column :cars, :app_access, :integer
  end
end
