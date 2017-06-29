module CNovaApiLojistaV2
  module Model
	  # 
	  class GetOrdersTrackingUpdatingResponse < BaseObject
	    attr_accessor :trackings, :metadata
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Informações de tracking do pedido
	        :'trackings' => :'trackings',
	        
	        # Dados adicionais da consulta
	        :'metadata' => :'metadata'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'trackings' => :'array[OrderTrackingUpdatingStatus]',
	        :'metadata' => :'array[MetadataEntry]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'trackings']
	        if (value = attributes[:'trackings']).is_a?(Array)
	          @trackings = value
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
