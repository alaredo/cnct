class SessionsController < Devise::SessionsController
  def new
  	super
  end

  def create
  	
  	session[:current_user_id] = current_user.id
  	empList = UsersEmpresa.where("user_id=?",current_user.id)
  	unless empList.nil?
	  	if empList.count > 1
	  		session[:mult_empresa] = true
	  	else
	  		emp = UsersEmpresa.find_by_user_id(current_user.id)
		  	unless emp.nil?
		  		logger.debug "=================================================="
		  		logger.debug "C R I A N D O   S E S S A O"
			  	logger.debug "=================================================="
			  	logger.debug emp.empresa.name
			  	logger.debug "=================================================="
			  	session[:current_empresa_name] = emp.empresa.name
			  	session[:current_empresa_id] = emp.empresa.id
		  	end
	  	end
  	end

  	super
  end
end
