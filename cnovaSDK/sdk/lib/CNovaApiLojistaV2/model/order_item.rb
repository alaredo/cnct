module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderItem < BaseObject
	    attr_accessor :id, :sku_seller_id, :name, :sale_price, :sent, :freight, :gift_wrap, :promotions
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do item de Pedido
	        :'id' => :'id',
	        
	        # SKU ID do produto do Lojista
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Nome do produto
	        :'name' => :'name',
	        
	        # Preço de venda unitário
	        :'sale_price' => :'salePrice',
	        
	        # Flag que indica se o produto já foi enviado
	        :'sent' => :'sent',
	        
	        # Informações sobre o frete do produto
	        :'freight' => :'freight',
	        
	        # Informações de embrulho para presente
	        :'gift_wrap' => :'giftWrap',
	        
	        # Lista de Promoções
	        :'promotions' => :'promotions'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'sku_seller_id' => :'string',
	        :'name' => :'string',
	        :'sale_price' => :'double',
	        :'sent' => :'boolean',
	        :'freight' => :'Freight',
	        :'gift_wrap' => :'OrderGiftWrap',
	        :'promotions' => :'array[Promotion]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'salePrice']
	        @sale_price = attributes[:'salePrice']
	      end
	      
	      if attributes[:'sent']
	        @sent = attributes[:'sent']
	      end
	      
	      if attributes[:'freight']
	        @freight = attributes[:'freight']
	      end
	      
	      if attributes[:'giftWrap']
	        @gift_wrap = attributes[:'giftWrap']
	      end
	      
	      if attributes[:'promotions']
	        if (value = attributes[:'promotions']).is_a?(Array)
	          @promotions = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
