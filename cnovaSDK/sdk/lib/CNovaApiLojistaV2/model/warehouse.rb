module CNovaApiLojistaV2
  module Model
	  # 
	  class Warehouse < BaseObject
	    attr_accessor :id, :sites
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do warehouse. Ele deve ser utilizado nas atualizações de estoque dos produtos.
	        :'id' => :'id',
	        
	        # Lista de sites que esse warehouse atende.
	        :'sites' => :'sites'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'int',
	        :'sites' => :'array[string]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'sites']
	        if (value = attributes[:'sites']).is_a?(Array)
	          @sites = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
