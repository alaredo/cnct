module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderSandbox < BaseObject
	    attr_accessor :site, :items, :customer
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Site para o qual o pedido será criado. . Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	        :'site' => :'site',
	        
	        # Lista de produtos do pedido
	        :'items' => :'items',
	        
	        # Informações do cliente
	        :'customer' => :'customer'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'site' => :'string',
	        :'items' => :'array[OrderItemSandbox]',
	        :'customer' => :'CustomerSandbox'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'customer']
	        @customer = attributes[:'customer']
	      end
	      
	    end
	  end
	
	
  end
end
