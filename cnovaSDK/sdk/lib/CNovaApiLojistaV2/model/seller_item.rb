module CNovaApiLojistaV2
  module Model
	  # 
	  class SellerItem < BaseObject
	    attr_accessor :sku_seller_id, :sku_site_id, :title, :brand, :gtin, :status, :prices, :stocks, :urls, :images, :product, :dimensions, :gift_wrap, :attributes
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU ID do produto do Lojista
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # SKU Id do produto do Extra.
	        :'sku_site_id' => :'skuSiteId',
	        
	        # Título de venda do produto no Marketplace. Ex Televisor de LCD Sony Bravia 40...
	        :'title' => :'title',
	        
	        # Marca do produto. Ex Sony
	        :'brand' => :'brand',
	        
	        # Lista que pode conter tanto o código EAN do produto (código de barras) quanto códigos ISBN (geralmente utilizados para livros)
	        :'gtin' => :'gtin',
	        
	        # Status do produto para cada site
	        :'status' => :'status',
	        
	        # Informações de preço de venda do produto para cada site
	        :'prices' => :'prices',
	        
	        # Informações de estoque do produto para cada site
	        :'stocks' => :'stocks',
	        
	        # Lista de urls do produto para cada site no qual o mesmo está disponível
	        :'urls' => :'urls',
	        
	        # Lista de imagens do produto
	        :'images' => :'images',
	        
	        # Informações do catálogo de produtos
	        :'product' => :'product',
	        
	        # Informações de dimensões do produto
	        :'dimensions' => :'dimensions',
	        
	        # Informações de embrulho para presente
	        :'gift_wrap' => :'giftWrap',
	        
	        # Características do produto
	        :'attributes' => :'attributes'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller_id' => :'string',
	        :'sku_site_id' => :'string',
	        :'title' => :'string',
	        :'brand' => :'string',
	        :'gtin' => :'array[string]',
	        :'status' => :'array[SellerItemStatus]',
	        :'prices' => :'array[Prices]',
	        :'stocks' => :'array[ControlledStock]',
	        :'urls' => :'array[ProductSiteReference]',
	        :'images' => :'array[Image]',
	        :'product' => :'ProductReference',
	        :'dimensions' => :'Dimensions',
	        :'gift_wrap' => :'GiftWrap',
	        :'attributes' => :'array[ProductAttribute]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	      if attributes[:'skuSiteId']
	        @sku_site_id = attributes[:'skuSiteId']
	      end
	      
	      if attributes[:'title']
	        @title = attributes[:'title']
	      end
	      
	      if attributes[:'brand']
	        @brand = attributes[:'brand']
	      end
	      
	      if attributes[:'gtin']
	        if (value = attributes[:'gtin']).is_a?(Array)
	          @gtin = value
	        end
	      end
	      
	      if attributes[:'status']
	        if (value = attributes[:'status']).is_a?(Array)
	          @status = value
	        end
	      end
	      
	      if attributes[:'prices']
	        if (value = attributes[:'prices']).is_a?(Array)
	          @prices = value
	        end
	      end
	      
	      if attributes[:'stocks']
	        if (value = attributes[:'stocks']).is_a?(Array)
	          @stocks = value
	        end
	      end
	      
	      if attributes[:'urls']
	        if (value = attributes[:'urls']).is_a?(Array)
	          @urls = value
	        end
	      end
	      
	      if attributes[:'images']
	        if (value = attributes[:'images']).is_a?(Array)
	          @images = value
	        end
	      end
	      
	      if attributes[:'product']
	        @product = attributes[:'product']
	      end
	      
	      if attributes[:'dimensions']
	        @dimensions = attributes[:'dimensions']
	      end
	      
	      if attributes[:'giftWrap']
	        @gift_wrap = attributes[:'giftWrap']
	      end
	      
	      if attributes[:'attributes']
	        if (value = attributes[:'attributes']).is_a?(Array)
	          @attributes = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
