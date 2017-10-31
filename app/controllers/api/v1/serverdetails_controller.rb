class Api::V1::ServerdetailsController < ApplicationController
#class ServerdetailsController < ApplicationController
  before_action :set_serverdetail, only: [:show, :edit, :update, :destroy]
  
  # GET /serverdetails
  def index
    @serverdetails = Serverdetail.all
	        render json: @serverdetails
  end

  # GET /serverdetails/1
  def show
  	        render json: @serverdetail

  end

  # GET /serverdetails/new
  def new
    @serverdetail = Serverdetail.new
  end

  # GET /serverdetails/1/edit
  def edit
  end

  # POST /serverdetails
  def create
    @serverdetail = Serverdetail.new(serverdetail_params)

    if @serverdetail.save
      render json: @serverdetail, redirect_to @serverdetail, notice: 'Serverdetail was successfully created.'
    else
       render json: @servdetail.errors, render :new
    end
  end

  # PATCH/PUT /serverdetails/1
  def update
    if @serverdetail.update(serverdetail_params)
            render json: @serverdetail,redirect_to @serverdetail, notice: 'Serverdetail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /serverdetails/1
  def destroy
    @serverdetail.destroy
    redirect_to serverdetails_url, notice: 'Serverdetail was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serverdetail
      @serverdetail = Serverdetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def serverdetail_params
      params.require(:serverdetail).permit(:servername, :cpu, :disk, :process)
    end
end
