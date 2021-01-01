class SessionsController < ApplicationController

def welcome
end

def destroy
    session[:user_id].destroy
    redirect_to '/'
end 


def new
end

def create
    #try to find the user in the system
    User.find_by(username: params[:user][:username])
    #did we find someone and did they put in the password?
    if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
       redirect_to user_path(@user)
    else 
        flash[:error] = "Sorry, your login info is incorrect. Please try again."
        redirect_to login_path
     end
    end 
end 

