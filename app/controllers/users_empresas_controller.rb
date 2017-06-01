class UsersEmpresasController < ApplicationController
  before_action :set_users_empresa, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users_empresas = UsersEmpresa.all
    respond_with(@users_empresas)
  end

  def show
    respond_with(@users_empresa)
  end

  def new
    @emp_id = session[:emp_id]
    @users_empresa = UsersEmpresa.new
    respond_with(@users_empresa)
  end

  def edit
    
  end

  def create
    @users_empresa = UsersEmpresa.new(users_empresa_params)
    @users_empresa.save
    respond_with(@users_empresa)
  end

  def update
    @users_empresa.update(users_empresa_params)
    respond_with(@users_empresa)
  end

  def destroy
    @users_empresa.destroy
    respond_with(@users_empresa)
  end

  private
    def set_users_empresa
      @users_empresa = UsersEmpresa.find(params[:id])
    end

    def users_empresa_params
      params.require(:users_empresa).permit(:user_id, :empresa_id, :dtCriacao)
    end
end
