class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy, :attractions]

  respond_to :json

  # GET /tours
  # GET /tours.json
  def index
    @tours = Tour.all
    respond_with @tours
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    respond_with @tour
  end

  # GET /tours/new
  def new
    @tour = Tour.new
    respond_with @tour
  end

  # GET /tours/1/edit
  def edit
  end

  # POST /tours
  # POST /tours.json
  def create
    @tour = Tour.new(tour_params)

    if @tour.save
      respond_with @tour
    else
      respond_with @tour.errors
    end
  end

  # PATCH/PUT /tours/1
  # PATCH/PUT /tours/1.json
  def update
    if @tour.update(tour_params)
      respond_with @tour
    else
      respond_with @tour.errors
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour.destroy
    respond_with :no_content
  end

  # GET /tours/1/attractions
  def attractions
    @tourist_attractions = @tour.attractions
    respond_with @tourist_attractions
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour
      @tour = Tour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_params
      params.fetch(:tour, {})
    end
end
