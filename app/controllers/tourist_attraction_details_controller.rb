class TouristAttractionDetailsController < ApplicationController
  before_action :set_tourist_attraction_detail, only: [:show, :edit, :update, :destroy]

  respond_to :json

  # GET /tourist_attraction_details/1
  # GET /tourist_attraction_details/1.json
  def show
    respond_with @tourist_attraction_detail
  end

  # GET /tourist_attraction_details/new
  def new
    @tourist_attraction_detail = TouristAttractionDetail.new
    respond_with @tourist_attraction_detail
  end

  # GET /tourist_attraction_details/1/edit
  def edit
  end

  # POST /tourist_attraction_details
  # POST /tourist_attraction_details.json
  def create
    @tourist_attraction_detail = TouristAttractionDetail.new(tourist_attraction_detail_params)
      
    if @tourist_attraction_detail.save
      respond_with @tourist_attraction_detail
    else
      respond_with @tourist_attraction_detail.errors
    end
  end

  # PATCH/PUT /tourist_attraction_details/1
  # PATCH/PUT /tourist_attraction_details/1.json
  def update
    if @tourist_attraction_detail.update(tourist_attraction_detail_params)
      respond_with @tourist_attraction_detail
    else
      respond_with @tourist_attraction_detail.errors
    end
  end

  # DELETE /tourist_attraction_details/1
  # DELETE /tourist_attraction_details/1.json
  def destroy
    @tourist_attraction_detail.destroy
    respond_with :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourist_attraction_detail
      @tourist_attraction_detail = TouristAttractionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tourist_attraction_detail_params
      params.fetch(:tourist_attraction_detail, {})
    end
end
