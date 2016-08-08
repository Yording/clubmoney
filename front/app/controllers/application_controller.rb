class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
    def logged_in?
      if current_user.nil?
        redirect_to login_path
    
      end

    end
    def current_user
      @current_user ||=User.find_by(id: session["user_id"])
    end
end
