class ClientApplicationController < ApplicationController
  def index
    @client_apps = current_user.client_applications.all
  end

  def create
    @client_app = current_user.client_applications.new(params[:client_application])
    flash_result = @client_app.save ? {notice: "Application was successfully created."} :
      {alert: "Application has not been created!"}

    redirect_to client_application_index_path, flash_result
  end

end
