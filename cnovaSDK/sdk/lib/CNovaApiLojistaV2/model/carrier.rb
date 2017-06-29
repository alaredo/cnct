module CNovaApiLojistaV2
  module Model
	  # 
	  class Carrier < BaseObject
	    attr_accessor :name, :cnpj
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Nome da transportadora
	        :'name' => :'name',
	        
	        # CNPJ da transportadora
	        :'cnpj' => :'cnpj'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'name' => :'string',
	        :'cnpj' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'cnpj']
	        @cnpj = attributes[:'cnpj']
	      end
	      
	    end
	  end
	
	
  end
end
