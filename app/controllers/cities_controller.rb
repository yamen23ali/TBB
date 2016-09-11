class CitiesController < ApplicationController
  before_action :set_city, only: [:show]

  respond_to :json

  #=== API_PIE
  api :GET, "/cities/{id}", "Get city info by id"
  #=== API_PIE
  def show
    respond_with @city
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.fetch(:city, {})
    end
end
