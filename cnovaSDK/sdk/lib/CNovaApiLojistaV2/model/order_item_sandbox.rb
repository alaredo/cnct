module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderItemSandbox < BaseObject
	    attr_accessor :sku_seller_id, :name, :sale_price, :quantity
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU ID do produto do Lojista
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Nome do produto
	        :'name' => :'name',
	        
	        # Preço de venda
	        :'sale_price' => :'salePrice',
	        
	        # Quantidade produtos
	        :'quantity' => :'quantity'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller_id' => :'string',
	        :'name' => :'string',
	        :'sale_price' => :'double',
	        :'quantity' => :'int'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skuSellerId']
	        @sku_seller_id = attributes[:'skuSellerId']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'salePrice']
	        @sale_price = attributes[:'salePrice']
	      end
	      
	      if attributes[:'quantity']
	        @quantity = attributes[:'quantity']
	      end
	      
	    end
	  end
	
	
  end
end
