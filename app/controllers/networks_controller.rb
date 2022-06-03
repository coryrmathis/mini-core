class NetworksController < ApplicationController

  # GET /networks or /networks.json
  def index
    validated_result = Networks::SearchValidator.new.call(request.params)
    if validated_result.success?
      networks = Network.active.where(validated_result[:filter])
      # authorize networks

      render json: NetworkSerializer.new(networks).serializable_hash
    else
      render json: { errors: validated_result.errors}, status: :bad_request
    end
  end

  def create
    @network = Network.new(network_params)
    if @network.save
      redirect_to @network
    else
      render :new
    end
  end
end
