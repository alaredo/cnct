module CNovaApiLojistaV2
  module Model
	  # 
	  class StockUpdatingStatus < BaseObject
	    attr_accessor :warehouse, :sku_seller_id, :status, :processed_at, :update_value, :refer, :sku_site, :site_list, :errors
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Localização fisica do estoque
	        :'warehouse' => :'warehouse',
	        
	        # SKU do produto do lojista que deverá ser alterado
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Status da solicitação de atualização
	        :'status' => :'status',
	        
	        # Data do processamento
	        :'processed_at' => :'processedAt',
	        
	        # Valor de atualização
	        :'update_value' => :'updateValue',
	        
	        # Arquivo de referência da atualização
	        :'refer' => :'refer',
	        
	        # SKU do site onde o estoque será atualizado
	        :'sku_site' => :'skuSite',
	        
	        # 
	        :'site_list' => :'siteList',
	        
	        # Erros do pedido
	        :'errors' => :'errors'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'warehouse' => :'int',
	        :'sku_seller_id' => :'string',
	        :'status' => :'string',
	        :'processed_at' => :'DateTime',
	        :'update_value' => :'double',
	        :'refer' => :'string',
	        :'sku_site' => :'string',
	        :'site_list' => :'array[string]',
	        :'errors' => :'array[Error]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'warehouse']
	        @warehouse = attributes[:'warehouse']
	      end
	      
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
	      
	      if attributes[:'refer']
	        @refer = attributes[:'refer']
	      end
	      
	      if attributes[:'skuSite']
	        @sku_site = attributes[:'skuSite']
	      end
	      
	      if attributes[:'siteList']
	        if (value = attributes[:'siteList']).is_a?(Array)
	          @site_list = value
	        end
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
