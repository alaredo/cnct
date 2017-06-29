module CNovaApiLojistaV2
  module Model
	  # 
	  class UserReference < BaseObject
	    attr_accessor :login, :name
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Login do usuário que fará o atendimento do Ticket
	        :'login' => :'login',
	        
	        # Nome do usuário que fará o atendimento do Ticket
	        :'name' => :'name'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'login' => :'string',
	        :'name' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'login']
	        @login = attributes[:'login']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	    end
	  end
	
	
  end
end
