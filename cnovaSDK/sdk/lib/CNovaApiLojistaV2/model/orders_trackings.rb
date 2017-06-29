module CNovaApiLojistaV2
  module Model
	  # 
	  class OrdersTrackings < BaseObject
	    attr_accessor :trackings
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Lista de trackings
	        :'trackings' => :'trackings'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'trackings' => :'array[OrderTracking]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'trackings']
	        if (value = attributes[:'trackings']).is_a?(Array)
	          @trackings = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
