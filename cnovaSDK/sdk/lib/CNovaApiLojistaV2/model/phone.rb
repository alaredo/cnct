module CNovaApiLojistaV2
  module Model
	  # 
	  class Phone < BaseObject
	    attr_accessor :number, :type
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Número do telefone
	        :'number' => :'number',
	        
	        # Tipo do telefone
	        :'type' => :'type'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'number' => :'string',
	        :'type' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	    end
	  end
	
	
  end
end
