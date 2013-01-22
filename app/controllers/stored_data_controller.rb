class StoredDataController < ApplicationController
  def index
    @stored_datum = StoredData.all
  end

  def show
    @stored_data = StoredData.find(params[:id])
  end

  def new
    @stored_data = StoredData.new
  end

  def edit
    @stored_data = StoredData.find(params[:id])
  end

  def create
    @stored_data = StoredData.new(params[:stored_data])
    if @stored_data.save
      redirect_to @stored_data, notice: "Data was successfully created."
    else
      render :new
    end
  end

  def update
    @stored_data = StoredData.find(params[:id])
    if @stored_data.update_attributes(params[:stored_data])
      redirect_to @stored_data, notice: "Data was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @stored_data = StoredData.find(params[:id])
    @stored_data.destroy
    redirect_to stored_data_url, notice: "Data was destroyed."
  end
end
