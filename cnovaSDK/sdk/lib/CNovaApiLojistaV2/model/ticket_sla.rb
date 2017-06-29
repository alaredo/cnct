module CNovaApiLojistaV2
  module Model
	  # 
	  class TicketSla < BaseObject
	    attr_accessor :expire_at, :delayed
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Data de expiração para resolução do ticket.
	        :'expire_at' => :'expireAt',
	        
	        # Indicador de atraso do ticket.
	        :'delayed' => :'delayed'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'expire_at' => :'DateTime',
	        :'delayed' => :'boolean'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'expireAt']
	        @expire_at = attributes[:'expireAt']
	      end
	      
	      if attributes[:'delayed']
	        @delayed = attributes[:'delayed']
	      end
	      
	    end
	  end
	
	
  end
end
