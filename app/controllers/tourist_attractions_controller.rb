class TouristAttractionsController < ApplicationController
  before_action :set_tourist_attraction, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @tourist_attractions = TouristAttraction.all
    respond_with @tourist_attractions
  end
  # GET /tourist_attractions/1
  # GET /tourist_attractions/1.json
  def show
    respond_with @tourist_attraction
  end

  # GET /tourist_attractions/new
  def new
    @tourist_attraction = TouristAttraction.new
    respond_with @tourist_attraction
  end

  # GET /tourist_attractions/1/edit
  def edit
  end

  # POST /tourist_attractions
  # POST /tourist_attractions.json
  def create
    @tourist_attraction = TouristAttraction.new(tourist_attraction_params)

    if @tourist_attraction.save
      respond_with @tourist_attraction
    else
      respond_with @tourist_attraction.errors
    end
  end

  # PATCH/PUT /tourist_attractions/1
  # PATCH/PUT /tourist_attractions/1.json
  def update
    if @tourist_attraction.update(tourist_attraction_params)
      respond_with @tourist_attraction
    else
      respond_with @tourist_attraction.errors
    end
  end

  # DELETE /tourist_attractions/1
  # DELETE /tourist_attractions/1.json
  def destroy
    @tourist_attraction.destroy
    respond_with :no_content
  end

  # GET /tourist_attractions/1/tourist_attraction_details
  def tourist_attraction_details
    @tourist_attraction_details = @tourist_attraction.details
    respond_with @tourist_attraction_details
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_attraction
      @tourist_attraction = TouristAttraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_attraction_params
      params.fetch(:tourist_attraction, {})
    end
end
