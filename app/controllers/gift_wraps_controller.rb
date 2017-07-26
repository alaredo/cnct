class GiftWrapsController < ApplicationController
  before_action :set_gift_wrap, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @gift_wraps = GiftWrap.all
    respond_with(@gift_wraps)
  end

  def show
    respond_with(@gift_wrap)
  end

  def new
    @gift_wrap = GiftWrap.new
    respond_with(@gift_wrap)
  end

  def edit
  end

  def create
    @gift_wrap = GiftWrap.new(gift_wrap_params)
    @gift_wrap.save
    respond_with(@gift_wrap)
  end

  def update
    @gift_wrap.update(gift_wrap_params)
    respond_with(@gift_wrap)
  end

  def destroy
    @gift_wrap.destroy
    respond_with(@gift_wrap)
  end

  private
    def set_gift_wrap
      @gift_wrap = GiftWrap.find(params[:id])
    end

    def gift_wrap_params
      params.require(:gift_wrap).permit(:available, :value, :message_support)
    end
end
