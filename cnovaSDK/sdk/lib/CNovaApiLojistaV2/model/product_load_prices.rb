module CNovaApiLojistaV2
  module Model
	  # 
	  class ProductLoadPrices < BaseObject
	    attr_accessor :default, :offer
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Preço de do produto no Marketplace
	        :'default' => :'default',
	        
	        # Preço real de venda. Preço por do produto no Marketplace
	        :'offer' => :'offer'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'default' => :'double',
	        :'offer' => :'double'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'default']
	        @default = attributes[:'default']
	      end
	      
	      if attributes[:'offer']
	        @offer = attributes[:'offer']
	      end
	      
	    end
	  end
	
	
  end
end
