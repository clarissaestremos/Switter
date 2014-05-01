class SwitsController < ApplicationController
	  # before_filter :authenticate_user!
	def new
		@swit = Swit.new
  end
 
  def create
	 @swit = Swit.new(swit_params)
	 
	 if @swit.save
	  redirect_to @swit
	else 'new'
	end
end

def show
  @swit = Swit.find(params[:id])
end

def index
  @swits = Swit.all
end

private
  def swit_params
    params.require(:swit).permit(:username, :password)
  end
end


