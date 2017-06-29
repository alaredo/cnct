module CNovaApiLojistaV2
  module Model
	  # 
	  class Promotion < BaseObject
	    attr_accessor :id, :name, :amount, :type
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID da promoção que o produto foi adquirido
	        :'id' => :'id',
	        
	        # Descrição da promoção
	        :'name' => :'name',
	        
	        # Total de desconto
	        :'amount' => :'amount',
	        
	        # Tipo da promoção
	        :'type' => :'type'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'name' => :'string',
	        :'amount' => :'double',
	        :'type' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'amount']
	        @amount = attributes[:'amount']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	    end
	  end
	
	
  end
end
