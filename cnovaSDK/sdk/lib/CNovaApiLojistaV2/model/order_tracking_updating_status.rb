module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderTrackingUpdatingStatus < BaseObject
	    attr_accessor :order, :items, :status, :processed_at, :errors
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Dados do pedido
	        :'order' => :'order',
	        
	        # Items do pedido
	        :'items' => :'items',
	        
	        # Status do pedido
	        :'status' => :'status',
	        
	        # Data do processamento
	        :'processed_at' => :'processedAt',
	        
	        # Erros do envido de pedidos
	        :'errors' => :'errors'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'order' => :'OrderReference',
	        :'items' => :'array[OrderItemReference]',
	        :'status' => :'string',
	        :'processed_at' => :'DateTime',
	        :'errors' => :'array[Error]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'order']
	        @order = attributes[:'order']
	      end
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'processedAt']
	        @processed_at = attributes[:'processedAt']
	      end
	      
	      if attributes[:'errors']
	        if (value = attributes[:'errors']).is_a?(Array)
	          @errors = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
