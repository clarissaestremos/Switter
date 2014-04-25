class RegistersController < ApplicationController
	def new
		@register = Register.new
  end
 
  def create
	  @register = Register.new(register_params)
	 

	 if @register.save
	  redirect_to @register
	else 'new'
	end
end

def show
  @register = Register.find(params[:id])
end

def index
  @registers = Register.all
end

private
  def register_params
    params.require(:register).permit(:username, :password, :password_confirmation)
  end
end
