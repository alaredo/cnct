module CNovaApiLojistaV2
  module Model
	  # 
	  class SellerItemStatusUpdate < BaseObject
	    attr_accessor :sku_seller_id, :status
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU do produto do lojista que deverá ser alterado
	        :'sku_seller_id' => :'skuSellerId',
	        
	        # Status do produto
	        :'status' => :'status'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller_id' => :'string',
	        :'status' => :'array[SellerItemStatus]'
	        
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
	        if (value = attributes[:'status']).is_a?(Array)
	          @status = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
