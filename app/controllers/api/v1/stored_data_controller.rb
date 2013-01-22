module Api
  module V1
    class StoredDataController < ApplicationController
      respond_to :json

      def index
        respond_with StoredData.all
      end

      def show
        respond_with StoredData.find(params[:id])
      end

      def create
        respond_with StoredData.create(params[:stored_data])
      end

      def update
        respond_with StoredData.update(params[:id], params[:stored_data])
      end

      def destroy
        respond_with StoredData.destroy(params[:id])
      end
    end
  end
end