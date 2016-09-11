class CountriesController < ApplicationController
  before_action :set_country, only: [:show]

  respond_to :json

  #=== API_PIE
  api :GET, "/countries", "Get list of all countries with their cities"
  #=== API_PIE
  def index
    @countries = Country.all
    respond_with @countries
  end

  #=== API_PIE
  api :GET, "/countries/{id}", "Get country details by its id"
  #=== API_PIE
  def show
    respond_with @country
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.fetch(:country, {})
    end
end
