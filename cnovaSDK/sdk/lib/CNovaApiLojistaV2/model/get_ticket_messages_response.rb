module CNovaApiLojistaV2
  module Model
	  # 
	  class GetTicketMessagesResponse < BaseObject
	    attr_accessor :messages, :metadata
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Mensagens
	        :'messages' => :'messages',
	        
	        # Metadados do status
	        :'metadata' => :'metadata'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'messages' => :'array[TicketMessage]',
	        :'metadata' => :'array[MetadataEntry]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'messages']
	        if (value = attributes[:'messages']).is_a?(Array)
	          @messages = value
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
