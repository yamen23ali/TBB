class AttractionDetailsController < ApplicationController
  before_action :set_attraction_detail, only: [:show, :edit, :update, :destroy]

  respond_to :json

  # GET /attraction_details/1
  # GET /attraction_details/1.json
  def show
    respond_with @attraction_detail
  end

  # GET /attraction_details/new
  def new
    @attraction_detail = AttractionDetail.new
    respond_with @attraction_detail
  end

  # GET /attraction_details/1/edit
  def edit
  end

  # POST /attraction_details
  # POST /attraction_details.json
  def create
    @attraction_detail = AttractionDetail.new(attraction_detail_params)
      
    if @attraction_detail.save
      respond_with @attraction_detail
    else
      respond_with @attraction_detail.errors
    end
  end

  # PATCH/PUT /attraction_details/1
  # PATCH/PUT /attraction_details/1.json
  def update
    if @attraction_detail.update(attraction_detail_params)
      respond_with @attraction_detail
    else
      respond_with @attraction_detail.errors
    end
  end

  # DELETE /attraction_details/1
  # DELETE /attraction_details/1.json
  def destroy
    @attraction_detail.destroy
    respond_with :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attraction_detail
      @attraction_detail = AttractionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attraction_detail_params
      params.fetch(:attraction_detail, {})
    end
end
