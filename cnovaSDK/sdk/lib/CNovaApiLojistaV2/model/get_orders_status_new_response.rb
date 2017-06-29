module CNovaApiLojistaV2
  module Model
	  # 
	  class GetOrdersStatusNewResponse < BaseObject
	    attr_accessor :orders, :metadata
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'orders' => :'orders',
	        
	        # Leia mais sobre os metadados retornados nas listagens em &lt;a href=&#39;../apis/index.html#search&#39; target=&#39;_blank&#39;&gt;Metadada&lt;/a&gt;
	        :'metadata' => :'metadata'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'orders' => :'array[OrderStatusNew]',
	        :'metadata' => :'array[MetadataEntry]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'orders']
	        if (value = attributes[:'orders']).is_a?(Array)
	          @orders = value
	        end
	      end
	      
	      if attributes[:'metadata']
	        if (value = attributes[:'metadata']).is_a?(Array)
	          @metadata = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
