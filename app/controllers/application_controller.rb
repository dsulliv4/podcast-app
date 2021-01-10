class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        # user_path(current_user) # your path
        podcasts_path
    end
  
    def current_user
      User.find(session[:user_id]) rescue nil
    end



end
