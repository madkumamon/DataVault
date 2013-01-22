class ClientApplicationController < ApplicationController
  def index
    @client_apps = current_user.client_applications.all
  end

  def create
    @client_app = current_user.client_applications.new(params[:client_application])
    if @client_app.save
      redirect_to client_application_index_path, notice: "Application was successfully created."
    else
      redirect_to client_application_index_path, alert: "Application has not been created!"
    end
  end

end
