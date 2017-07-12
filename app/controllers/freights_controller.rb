class FreightsController < ApplicationController
  before_action :set_freight, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @freights = Freight.all
    respond_with(@freights)
  end

  def show
    respond_with(@freight)
  end

  def new
    @freight = Freight.new
    respond_with(@freight)
  end

  def edit
  end

  def create
    @freight = Freight.new(freight_params)
    @freight.save
    respond_with(@freight)
  end

  def update
    @freight.update(freight_params)
    respond_with(@freight)
  end

  def destroy
    @freight.destroy
    respond_with(@freight)
  end

  private
    def set_freight
      @freight = Freight.find(params[:id])
    end

    def freight_params
      params.require(:freight).permit(:actual_amount, :charged_amount, :transit_time, :cross_docking_time, :additional_info, :type, :schedule_at, :schedule_period)
    end
end
