class ProvidersController < ApplicationController

    def index
        @providers = Provider.all
    end

    def show 
        @provider = Provider.find(params[:id])
    end

    def new 
        @provider = Provider.new
    end

    def create 
        @provider = Provider.new(provider_params)

        if @provider.save 
            redirect_to @provider
        else
            # render "new", notice: @provider.errors.full_messages.join(", ")
            render json: @provider.errors
        end
    end

    def edit
        @provider = Provider.find(params[:id])
    end

    def update 
        @provider = Provider.find(params[:id])

        if @provider.update(provider_params)
            redirect_to @provider
        else
            # render "new", notice: @provider.errors.full_messages.join(", ")
            render json: @provider.errors
        end
    end

    def destroy 
        @provider = Provider.find(params[:id])
        if @provider.destroy 
            redirect_to providers_path
        else
            render json: @provider.errors
        end
    end

    private 

    def provider_params
        params.require(:provider).permit(
            :name,
            :description
        )
    end
end