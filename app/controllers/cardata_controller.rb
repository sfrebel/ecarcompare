class CardataController < ApplicationController
  before_action :set_cardatum, only: [:show, :edit, :update, :destroy]

  # GET /cardata
  def index
    @cardata = Cardata.all
  end

  # GET /cardata/1
  def show
  end

  # GET /cardata/new
  def new
    @cardatum = Cardata.new
  end

  # GET /cardata/1/edit
  def edit
  end

  # POST /cardata
  def create
    @cardatum = Cardata.new(cardatum_params)

    if @cardatum.save
      redirect_to @cardatum, notice: 'Cardata was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cardata/1
  def update
    if @cardatum.update(cardatum_params)
      redirect_to @cardatum, notice: 'Cardata was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cardata/1
  def destroy
    @cardatum.destroy
    redirect_to cardata_index_url, notice: 'Cardata was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardatum
      @cardatum = Cardata.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cardatum_params
      params.require(:cardatum).permit(:name, :base_price, :battery_capacity, :range)
    end
end
