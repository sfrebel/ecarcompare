# frozen_string_literal: true

class CarsController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :set_car, only: %i[show edit update destroy]

  # GET /cars
  def index
    @cars = Car.order(sort_column + ' ' + sort_direction)
  end

  # GET /cars/1
  def show; end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit; end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car, notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      redirect_to @car, notice: 'Car was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
    redirect_to cars_url, notice: 'Car was successfully destroyed.'
  end

  private

  def sort_column
    Car.column_names.include?(params[:sort]) ? params[:sort] : 'name'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def car_params
    params.require(:car).permit(:name, :base_price, :battery_capacity, :range, :brand, :dc_charging, :ac_charging, :plug_type, :consumption, :rental_battery, :top_speed, :continuous_speed, :acceleration, :seats, :frunk_space, :trunk_space, :frunk_space_big, :weight, :battery_voltage, :camper_mode, :interiour_sounds, :exteriour_sounds, :drive_axle, :max_power, :max_regen, :battery_temp_control, :battery_cell_type, :battery_chemistry, :motor_type, :charging_network, :towing_capacity, :app_access)
  end
end
