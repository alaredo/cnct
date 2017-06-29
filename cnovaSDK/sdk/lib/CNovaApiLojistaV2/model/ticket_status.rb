module CNovaApiLojistaV2
  module Model
	  # 
	  class TicketStatus < BaseObject
	    attr_accessor :ticket_status
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Novo status desejado do Ticket. Fechado &lt;strong&gt; (closed) &lt;/strong&gt; e Em Acompanhamento &lt;strong&gt; (attendance) &lt;/strong&gt;
	        :'ticket_status' => :'ticketStatus'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'ticket_status' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'ticketStatus']
	        @ticket_status = attributes[:'ticketStatus']
	      end
	      
	    end
	  end
	
	
  end
end
