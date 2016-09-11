class UsersController < ApplicationController
  before_action :set_user, only: [:tours]

  respond_to :json

  # Get user/{id}/tours
  def tours
    @tours  = @user.tours
    respond_with @tours
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
