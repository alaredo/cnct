module CNovaApiLojistaV2
  module Model
	  # 
	  class ProductLoadStock < BaseObject
	    attr_accessor :quantity, :cross_docking_time
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Quantidade de produtos disponíveis
	        :'quantity' => :'quantity',
	        
	        # Tempo de preparação/fabricação do produto em dias. Esse tempo é incluído no cálculo de frete
	        :'cross_docking_time' => :'crossDockingTime'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'quantity' => :'int',
	        :'cross_docking_time' => :'int'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'quantity']
	        @quantity = attributes[:'quantity']
	      end
	      
	      if attributes[:'crossDockingTime']
	        @cross_docking_time = attributes[:'crossDockingTime']
	      end
	      
	    end
	  end
	
	
  end
end
