module CNovaApiLojistaV2
  module Model
	  # 
	  class Error < BaseObject
	    attr_accessor :code, :http_status, :type, :message, :sku_seller_id
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Código de retorno da aplicação
	        :'code' => :'code',
	        
	        # Código de retorno do protocólo HTTP
	        :'http_status' => :'httpStatus',
	        
	        # Tipo do erro
	        :'type' => :'type',
	        
	        # Descrição do erro
	        :'message' => :'message',
	        
	        # Identificador do seller item que originou o problema
	        :'sku_seller_id' => :'skuSellerId'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'code' => :'string',
	        :'http_status' => :'string',
	        :'type' => :'string',
	        :'message' => :'string',
	        :'sku_seller_id' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'code']
	        @code = attributes[:'code']
	      end
	      
	      if attributes[:'httpStatus']
	        @http_status = attributes[:'httpStatus']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'message']
	        @message = attributes[:'message']
	      end
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	    end
	  end
	
	
  end
end
