module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderReference < BaseObject
	    attr_accessor :id, :href
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do pedido.
	        :'id' => :'id',
	        
	        # URL de consulta da ordem por ID.
	        :'href' => :'href'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'int',
	        :'href' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'href']
	        @href = attributes[:'href']
	      end
	      
	    end
	  end
	
	
  end
end
