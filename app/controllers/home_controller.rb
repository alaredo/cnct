class HomeController < ApplicationController
	before_action :authenticate_user!


  	def index
  		if session[:mult_empresa]
  			@multi = "Multi"
  			@empresa = Empresa.new
  			empList = UsersEmpresa.where("user_id=?",current_user.id)
  			@usuarioEmpresas = Empresa.all
  		end
        @cnova = Cnova.new
        @cnova.getOrders
        
        logger.debug "=================================================="
        logger.debug "--------------------------> fim do index home" 
        logger.debug "=================================================="
  	end

  	def setEmpresa
  		@usuarioEmpresas = Empresa.all
  		
  		session[:current_empresa_id] = params["id"]
  		session[:mult_empresa] = false

  	end

  	
end
