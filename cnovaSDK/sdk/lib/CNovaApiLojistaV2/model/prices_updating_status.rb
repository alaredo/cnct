module CNovaApiLojistaV2
  module Model
	  # 
	  class PricesUpdatingStatus < BaseObject
	    attr_accessor :sku_seller_id, :status, :processed_at, :update_value, :site_name, :errors
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU do produto do lojista que deverá ser alterado
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Status do pedido
	        :'status' => :'status',
	        
	        # Data do processamento
	        :'processed_at' => :'processedAt',
	        
	        # Valor de atualização
	        :'update_value' => :'updateValue',
	        
	        # Nome do site
	        :'site_name' => :'siteName',
	        
	        # Erros do pedido
	        :'errors' => :'errors'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller_id' => :'string',
	        :'status' => :'string',
	        :'processed_at' => :'DateTime',
	        :'update_value' => :'double',
	        :'site_name' => :'string',
	        :'errors' => :'array[Error]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'processedAt']
	        @processed_at = attributes[:'processedAt']
	      end
	      
	      if attributes[:'updateValue']
	        @update_value = attributes[:'updateValue']
	      end
	      
	      if attributes[:'siteName']
	        @site_name = attributes[:'siteName']
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
