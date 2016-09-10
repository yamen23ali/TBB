class AttractionsController < ApplicationController
  before_action :set_attraction, only: [:show, :edit, :update, :destroy, :details]

  respond_to :json

  # GET /attractions/1
  # GET /attractions/1.json
  def show
    respond_with @attraction
  end

  # GET /attractions/new
  def new
    @attraction = Attraction.new
    respond_with @attraction
  end

  # GET /attractions/1/edit
  def edit
  end

  # POST /attractions
  # POST /attractions.json
  def create
    @attraction = Attraction.new(attraction_params)

    if @attraction.save
      respond_with @attraction
    else
      respond_with @attraction.errors
    end
  end

  # PATCH/PUT /attractions/1
  # PATCH/PUT /attractions/1.json
  def update
    if @attraction.update(attraction_params)
      respond_with @attraction
    else
      respond_with @attraction.errors
    end
  end

  # DELETE /attractions/1
  # DELETE /attractions/1.json
  def destroy
    @attraction.destroy
    respond_with :no_content
  end

  # GET /attractions/1/details
  def details
    @attraction_details = @attraction.details
    respond_with @attraction_details
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction
      @attraction = Attraction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attraction_params
      params.fetch(:attraction, {})
    end
end
