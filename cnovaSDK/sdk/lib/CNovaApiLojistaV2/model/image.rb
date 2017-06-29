module CNovaApiLojistaV2
  module Model
	  # 
	  class Image < BaseObject
	    attr_accessor :type, :main, :url
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Formato da imagem
	        :'type' => :'type',
	        
	        # Flag que indica se a imagem é a principal
	        :'main' => :'main',
	        
	        # URL da imagem do produto
	        :'url' => :'url'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'type' => :'string',
	        :'main' => :'boolean',
	        :'url' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'main']
	        @main = attributes[:'main']
	      end
	      
	      if attributes[:'url']
	        @url = attributes[:'url']
	      end
	      
	    end
	  end
	
	
  end
end
