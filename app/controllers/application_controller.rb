class ApplicationController < ActionController::Base
    include SessionsHelper

    before_action :authenticate, :except => [:new, :create]
    
    def current_user
        @_current_user ||= session[:current_user_id] &&
          User.find_by_id(session[:current_user_id])
    end

    private 



    def authenticate
      unless current_user
        redirect_to root_path
      end
    end
end
