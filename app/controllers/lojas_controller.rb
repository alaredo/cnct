class LojasController < ApplicationController
  before_action :set_loja, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lojas = Loja.all
    respond_with(@lojas)
  end

  def show
    respond_with(@loja)
  end

  def new
    @loja = Loja.new
    respond_with(@loja)
  end

  def edit
  end

  def create
    @loja = Loja.new(loja_params)
    @loja.save
    respond_with(@loja)
  end

  def update
    @loja.update(loja_params)
    respond_with(@loja)
  end

  def destroy
    @loja.destroy
    respond_with(@loja)
  end

  private
    def set_loja
      @loja = Loja.find(params[:id])
    end

    def loja_params
      params.require(:loja).permit(:MarketPlace_id, :code, :name, :image)
    end
end
