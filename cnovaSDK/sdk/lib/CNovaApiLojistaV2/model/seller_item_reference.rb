module CNovaApiLojistaV2
  module Model
	  # 
	  class SellerItemReference < BaseObject
	    attr_accessor :id, :href
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do produto
	        :'id' => :'id',
	        
	        # Caminho do produto
	        :'href' => :'href'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
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
