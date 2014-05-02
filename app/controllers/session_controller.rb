class SessionController < ApplicationController
  def new
  end

  def create
  	sweeter = Sweeter.find_by_username(params[:username])
   
  	if sweeter.nil?
       flash[:notice] = "Warning: The some fields are empty. Please provide complete necessary details to login."
  		 redirect_to sweeters_path
  	else
  		if sweeter.authenticate(params[:password])
        session[:id] = sweeter.id
        session[:username] = sweeter.username
        redirect_to posts_path
      else
        flash[:notice] = "Warning: The password does not match the username."
  		  redirect_to sweeters_path
      end
  	end
  end

  def destroy
    reset_session
    redirect_to sweeters_path
  end
end

