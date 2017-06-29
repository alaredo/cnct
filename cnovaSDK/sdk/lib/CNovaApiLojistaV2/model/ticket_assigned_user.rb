module CNovaApiLojistaV2
  module Model
	  # 
	  class TicketAssignedUser < BaseObject
	    attr_accessor :user, :group
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do assunto.
	        :'user' => :'user',
	        
	        # Descrição do assunto relacionado ao ticket.
	        :'group' => :'group'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'user' => :'string',
	        :'group' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'user']
	        @user = attributes[:'user']
	      end
	      
	      if attributes[:'group']
	        @group = attributes[:'group']
	      end
	      
	    end
	  end
	
	
  end
end
