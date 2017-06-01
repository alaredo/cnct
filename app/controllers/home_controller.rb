class HomeController < ApplicationController
	before_action :authenticate_user!
  	def index
  		if session[:mult_empresa]
  			@multi = "Multi"
  			@empresa = Empresa.new
  			empList = UsersEmpresa.where("user_id=?",current_user.id)
  			@usuarioEmpresas = Empresa.all
  		end
  	end
end
