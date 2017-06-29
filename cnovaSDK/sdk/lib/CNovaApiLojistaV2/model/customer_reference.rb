module CNovaApiLojistaV2
  module Model
	  # 
	  class CustomerReference < BaseObject
	    attr_accessor :name, :phone_number
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Nome do cliente
	        :'name' => :'name',
	        
	        # Telefone do cliente
	        :'phone_number' => :'phoneNumber'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'name' => :'string',
	        :'phone_number' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'phoneNumber']
	        @phone_number = attributes[:'phoneNumber']
	      end
	      
	    end
	  end
	
	
  end
end
