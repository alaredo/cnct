module CNovaApiLojistaV2
  module Model
	  # 
	  class ProductResponseItem < BaseObject
	    attr_accessor :sku_seller, :status, :created_at
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # SKU do produto do Lojista
	        :'sku_seller' => :'skuSeller',
	        
	        # Status do produto
	        :'status' => :'status',
	        
	        # Data de envio do produto
	        :'created_at' => :'createdAt'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku_seller' => :'SellerItemReference',
	        :'status' => :'string',
	        :'created_at' => :'DateTime'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skuSeller']
	        @sku_seller = attributes[:'skuSeller']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'createdAt']
	        @created_at = attributes[:'createdAt']
	      end
	      
	    end
	  end
	
	
  end
end
