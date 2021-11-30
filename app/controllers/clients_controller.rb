class ClientsController < ApplicationController
    
    def index
        client = Client.all 
        render json: client, status: :ok
    end
    
    def show
        client =  Client.find(params[:id])
        render json: client, status: :ok
    rescue ActiveRecord::RecordNotFound
        render json: {error: "Not found"}, status: :not_found
    end
end
