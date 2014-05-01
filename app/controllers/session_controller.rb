class SessionController < ApplicationController
  def new
  end

  def create
  	sweeter = Sweeter.find_by_username(params[:username])
   
  	if sweeter.nil?
  		 redirect_to 'new'
  	else
  		if sweeter.authenticate(params[:password])
        session[:id] = sweeter.id
        session[:username] = sweeter.username
        redirect_to posts_path
      else
  		  redirect_to 'new'
      end
  	end
  end

  def destroy
    reset_session
    redirect_to sweeters_path
  end
end

