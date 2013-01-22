class ApiController < ActionController::Base
  protect_from_forgery
  before_filter :restrict_access

  private
  def restrict_access
     @client_app = ClientApplication.find_by_access_token(params[:access_token])
     head :unauthorized unless @client_app
  end
end