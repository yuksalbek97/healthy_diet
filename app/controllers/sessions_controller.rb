class SessionsController < ApplicationController
    
    def update_view
        session[:view_count] = 0

        redirect_back fallback_location: proteins_path
    end

end
