class Empresa < ActiveRecord::Base
	has_many :users_empresa
    validates_presence_of :login, :passwd, :name
    validates_length_of :login, :in => 5..100
    validates_length_of :passwd, :in =>5..50
    validates_uniqueness_of :login
    
    def self.logon(login, password)
        
        empresa = Empresa.where('login = ? and passwd = ?', login, password).order(login: :asc).first
        empresa
    end
end
