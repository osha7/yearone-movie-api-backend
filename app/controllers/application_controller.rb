class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    def home
        render json: {messege: "Server is up!"}
    end

end
