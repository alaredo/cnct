class HomeController < ApplicationController
	before_action :authenticate_user!
  	def index
  		if session[:mult_empresa]
  			@multi = "Multi"
  			@empresa = Empresa.new
  			empList = UsersEmpresa.where("user_id=?",current_user.id)
  			@usuarioEmpresas = Empresa.all
  			@aux = Aux.new
  		end
  	end

  	def setEmpresa
  		@usuarioEmpresas = Empresa.all
  		logger.debug "=================================================="
		  logger.debug "--------------------------> set Empresa" 
		  logger.debug params
		  logger.debug "=================================================="
  		session[:current_empresa_id] = params["id"]
  		session[:mult_empresa] = false

  	end

  	
end
