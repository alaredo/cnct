module CNovaApiLojistaV2
  module Model
	  # 
	  class Product < BaseObject
	    attr_accessor :sku_id, :sku_seller_id, :product_seller_id, :title, :description, :brand, :gtin, :categories, :images, :videos, :price, :stock, :dimensions, :gift_wrap, :attributes
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU ID do produto no Marketplace - utilizado para realizar associação de produtos
	        :'sku_id' => :'skuId',
	        
	        # SKU ID do produto do Lojista
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # ID do produto do lojista para fazer o agrupamento de SKUs
	        :'product_seller_id' => :'productSellerId',
	        
	        # Nome no Marketplace. Ex Televisor de LCD Sony Bravia 40...
	        :'title' => :'title',
	        
	        # Descrição do produto. Aceita tags HTML para formatar a apresentação da descrição, no entanto há algumas tags restritas (tags para acesso a conteúdo externo): img, object, script e iframe.
	        :'description' => :'description',
	        
	        # Marca. Ex Sony
	        :'brand' => :'brand',
	        
	        # Lista que pode conter tanto o código EAN do produto (código de barras) quanto códigos ISBN (geralmente utilizados para livros)
	        :'gtin' => :'gtin',
	        
	        # Lista de categorias
	        :'categories' => :'categories',
	        
	        #  Lista de URLs de imagens. Pelo menos uma imagem precisa ser informada
	        :'images' => :'images',
	        
	        #  Lista de URLs de vídeos
	        :'videos' => :'videos',
	        
	        # Informações de preço do produto
	        :'price' => :'price',
	        
	        # Informações de estoque do produto
	        :'stock' => :'stock',
	        
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
	        :'sku_id' => :'string',
	        :'sku_seller_id' => :'string',
	        :'product_seller_id' => :'string',
	        :'title' => :'string',
	        :'description' => :'string',
	        :'brand' => :'string',
	        :'gtin' => :'array[string]',
	        :'categories' => :'array[string]',
	        :'images' => :'array[string]',
	        :'videos' => :'array[string]',
	        :'price' => :'ProductLoadPrices',
	        :'stock' => :'ProductLoadStock',
	        :'dimensions' => :'Dimensions',
	        :'gift_wrap' => :'GiftWrap',
	        :'attributes' => :'array[ProductAttribute]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skuId']
	        @sku_id = attributes[:'skuId']
	      end
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	      if attributes[:'productSellerId']
	        @product_seller_id = attributes[:'productSellerId']
	      end
	      
	      if attributes[:'title']
	        @title = attributes[:'title']
	      end
	      
	      if attributes[:'description']
	        @description = attributes[:'description']
	      end
	      
	      if attributes[:'brand']
	        @brand = attributes[:'brand']
	      end
	      
	      if attributes[:'gtin']
	        if (value = attributes[:'gtin']).is_a?(Array)
	          @gtin = value
	        end
	      end
	      
	      if attributes[:'categories']
	        if (value = attributes[:'categories']).is_a?(Array)
	          @categories = value
	        end
	      end
	      
	      if attributes[:'images']
	        if (value = attributes[:'images']).is_a?(Array)
	          @images = value
	        end
	      end
	      
	      if attributes[:'videos']
	        if (value = attributes[:'videos']).is_a?(Array)
	          @videos = value
	        end
	      end
	      
	      if attributes[:'price']
	        @price = attributes[:'price']
	      end
	      
	      if attributes[:'stock']
	        @stock = attributes[:'stock']
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
