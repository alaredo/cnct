module CNovaApiLojistaV2
  module Model
	  # 
	  class GetSellerItemsStatusUpdatingResponse < BaseObject
	    attr_accessor :skus, :metadata
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Informações de status de SKU do produto do lojista
	        :'skus' => :'skus',
	        
	        # Dados adicionais da consulta
	        :'metadata' => :'metadata'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'skus' => :'array[SellerItemStatusUpdatingStatus]',
	        :'metadata' => :'array[MetadataEntry]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'skus']
	        if (value = attributes[:'skus']).is_a?(Array)
	          @skus = value
	        end
	      end
	      
	      if attributes[:'metadata']
	        if (value = attributes[:'metadata']).is_a?(Array)
	          @metadata = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
