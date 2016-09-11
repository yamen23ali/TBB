class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :update, :destroy, :attractions, :reviews]

  respond_to :json

  #=== API_PIE
  api :GET, "/tours", "Search tours"
  param :price, Integer, :desc => "Price of the tour"
  param :city, Integer, :desc => "The id of the city the tour belongs to"
  param :country, Integer, :desc => "The id of the country the tour belongs to"
  #=== API_PIE
  def index
    @tours = Tour.search(params['price'], params['city'], params['country'])
    respond_with @tours
  end

  #=== API_PIE
  api :GET, "/tours/{id}", "Get tour info by id"
  #=== API_PIE
  def show
    respond_with @tour
  end

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

  #=== API_PIE
  api :GET, "/tours/{id}/attractions", "Get tour attractions by tour id"
  #=== API_PIE
  def attractions
    @attractions = @tour.attractions
    respond_with @attractions
  end

  #=== API_PIE
  api :GET, "/tours/{id}/reviews", "Get tour reviews by tour id"
  #=== API_PIE
  def reviews
    @reviews = @tour.reviews
    respond_with @reviews
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
