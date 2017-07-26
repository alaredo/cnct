class ItemTrackingsController < ApplicationController
  before_action :set_item_tracking, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @item_trackings = ItemTracking.all
    respond_with(@item_trackings)
  end

  def show
    respond_with(@item_tracking)
  end

  def new
    @item_tracking = ItemTracking.new
    respond_with(@item_tracking)
  end

  def edit
  end

  def create
    @item_tracking = ItemTracking.new(item_tracking_params)
    @item_tracking.save
    respond_with(@item_tracking)
  end

  def update
    @item_tracking.update(item_tracking_params)
    respond_with(@item_tracking)
  end

  def destroy
    @item_tracking.destroy
    respond_with(@item_tracking)
  end

  private
    def set_item_tracking
      @item_tracking = ItemTracking.find(params[:id])
    end

    def item_tracking_params
      params.require(:item_tracking).permit(:href, :tracking_id)
    end
end
