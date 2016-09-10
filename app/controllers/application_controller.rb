class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  include DeviseTokenAuth::Concerns::SetUserByToken


  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found


private
  
  def record_not_found(error)
    render :json => {:error => error.message}, :status => :not_found
  end 
end
