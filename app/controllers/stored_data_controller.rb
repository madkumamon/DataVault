class StoredDataController < ApplicationController
  before_filter :preinit, :only => [:show, :edit, :update, :destroy]

  def index
    @stored_datum = StoredData.all
  end

  def show;  end

  def new
    @stored_data = StoredData.new
  end

  def edit;  end

  def create
    @stored_data = StoredData.new(params[:stored_data])
    if @stored_data.save
      redirect_to @stored_data, notice: "Data was successfully created."
    else
      render :new
    end
  end

  def update
    if @stored_data.update_attributes(params[:stored_data])
      redirect_to @stored_data, notice: "Data was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @stored_data.destroy
    redirect_to stored_data_url, notice: "Data was destroyed."
  end

private
  def preinit
    redirect_to root_path, :alert => "Not found" if (@stored_data = StoredData.find_by_id(params[:id])).blank?
  end
end
