class SessionsController < ApplicationController

def welcome
end

def destroy
    session.delete :user_id
    redirect_to '/'
end 


def new
end

def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
        session[:user_id] = user.id
       redirect_to user_path(user)
    else 
        flash[:error] = "Sorry, your login info is incorrect. Please try again."
        redirect_to login_path
    end 
end 
end 

