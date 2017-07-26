class PromotionsController < ApplicationController
  before_action :set_promotion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @promotions = Promotion.all
    respond_with(@promotions)
  end

  def show
    respond_with(@promotion)
  end

  def new
    @promotion = Promotion.new
    respond_with(@promotion)
  end

  def edit
  end

  def create
    @promotion = Promotion.new(promotion_params)
    @promotion.save
    respond_with(@promotion)
  end

  def update
    @promotion.update(promotion_params)
    respond_with(@promotion)
  end

  def destroy
    @promotion.destroy
    respond_with(@promotion)
  end

  private
    def set_promotion
      @promotion = Promotion.find(params[:id])
    end

    def promotion_params
      params.require(:promotion).permit(:name, :amount, :type, :orderItem_id)
    end
end
