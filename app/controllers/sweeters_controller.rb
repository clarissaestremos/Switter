class SweetersController < ApplicationController
  before_action :set_sweeter, only: [:show, :edit, :update, :destroy]

  # GET /sweeters
  # GET /sweeters.json
  def index
    @sweeters = Sweeter.all
  end

  # GET /sweeters/1
  # GET /sweeters/1.json
  def show
  end

  # GET /sweeters/new
  def new
    @sweeter = Sweeter.new
  end

  # GET /sweeters/1/edit
  def edit
  end

  # POST /sweeters
  # POST /sweeters.json
  def create
    @sweeter = Sweeter.new(sweeter_params)

    respond_to do |format|
      if @sweeter.save
        format.html { redirect_to @sweeter, notice: 'Sweeter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sweeter }
      else
        format.html { render action: 'new' }
        format.json { render json: @sweeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sweeters/1
  # PATCH/PUT /sweeters/1.json
  def update
    respond_to do |format|
      if @sweeter.update(sweeter_params)
        format.html { redirect_to @sweeter, notice: 'Sweeter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sweeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sweeters/1
  # DELETE /sweeters/1.json
  def destroy
    @sweeter.destroy
    respond_to do |format|
      format.html { redirect_to sweeters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweeter
      @sweeter = Sweeter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sweeter_params
      params.require(:sweeter).permit(:username, :password, :password_confirmation)
    end
end
