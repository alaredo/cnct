class AuxController < ApplicationController
	def new
		@aux = Aux.new
	end

	def setEmpresa
  		
  		logger.debug "=================================================="
		logger.debug "--------------------------> set Empresa" 
		logger.debug params
		logger.debug "=================================================="
  		session[:current_empresa_id] = params["id"]
  		session[:mult_empresa] = false

  	end
end