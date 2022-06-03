class AdminDashboardsController < ApplicationController
    before_action :ensure_admin
    layout 'admin'

    def show
    end

    private 

    def ensure_admin 
        if !current_user.admin 
            redirect_to networks_path
        end
    end
end