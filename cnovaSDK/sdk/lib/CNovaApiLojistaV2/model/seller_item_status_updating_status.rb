module CNovaApiLojistaV2
  module Model
	  # 
	  class SellerItemStatusUpdatingStatus < BaseObject
	    attr_accessor :sku_seller_id, :site, :status, :processed_at, :update_value, :site_name, :sku_site, :errors
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU do produto do lojista que deverá ser alterado
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Site de venda
	        :'site' => :'site',
	        
	        # Status do produto
	        :'status' => :'status',
	        
	        # Data do processamento
	        :'processed_at' => :'processedAt',
	        
	        # Atualização
	        :'update_value' => :'updateValue',
	        
	        # Nome do site
	        :'site_name' => :'siteName',
	        
	        # Sku do site
	        :'sku_site' => :'skuSite',
	        
	        # Lista de erros que ocorreram produto
	        :'errors' => :'errors'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller_id' => :'string',
	        :'site' => :'string',
	        :'status' => :'string',
	        :'processed_at' => :'DateTime',
	        :'update_value' => :'string',
	        :'site_name' => :'string',
	        :'sku_site' => :'string',
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
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
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
	      
	      if attributes[:'skuSite']
	        @sku_site = attributes[:'skuSite']
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
