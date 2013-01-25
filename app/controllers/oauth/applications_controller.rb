class Oauth::ApplicationsController < Doorkeeper::ApplicationsController
  before_filter :authenticate_user!

  def index
    @applications = current_user.oauth_applications
  end

  def create
    @application = current_user.oauth_applications.new(params[:application])
    if @application.save
      flash[:notice] = I18n.t(:notice, :scope => [:doorkeeper, :flash, :applications, :create])
      respond_with [:oauth, @application]
    else
      render :new
    end
  end

  def update
    @application = current_user.oauth_applications.find(params[:id])
    if @application.update_attributes(params[:application])
      flash[:notice] = I18n.t(:notice, :scope => [:doorkeeper, :flash, :applications, :update])
      respond_with [:oauth, @application]
    else
      render :edit
    end
  end

end
