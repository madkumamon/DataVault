class ApiController < ActionController::Base
  protect_from_forgery
  before_filter :restrict_access

private
  def restrict_access
     @client_app = ClientApplication.find_by_token(params[:token])
     head :unauthorized unless @client_app
  end
end