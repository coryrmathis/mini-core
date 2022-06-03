class ApplicationController < ActionController::Base
    # before_action :authenticate_user!
    include Pundit::Authorization
    
    rescue_from Pundit::NotAuthorizedError, with: :forbidden_response

    def forbidden_response 
        render json: {
            message: "Not Authorized",
            code: :unauthorized
        }
    end
end
