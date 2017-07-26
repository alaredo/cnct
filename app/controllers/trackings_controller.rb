class TrackingsController < ApplicationController
  before_action :set_tracking, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trackings = Tracking.all
    respond_with(@trackings)
  end

  def show
    respond_with(@tracking)
  end

  def new
    @tracking = Tracking.new
    respond_with(@tracking)
  end

  def edit
  end

  def create
    @tracking = Tracking.new(tracking_params)
    @tracking.save
    respond_with(@tracking)
  end

  def update
    @tracking.update(tracking_params)
    respond_with(@tracking)
  end

  def destroy
    @tracking.destroy
    respond_with(@tracking)
  end

  private
    def set_tracking
      @tracking = Tracking.find(params[:id])
    end

    def tracking_params
      params.require(:tracking).permit(:controlPoint, :description, :occurredAt, :url, :number, :sellerDeliveryId, :cte, :carrier_id, :invoice_id)
    end
end
