module CNovaApiLojistaV2
  module Model
	  # 
	  class NewTicket < BaseObject
	    attr_accessor :to, :body
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Email do consumidor retornado no pedido
	        :'to' => :'to',
	        
	        # Texto da mensagem
	        :'body' => :'body'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'to' => :'string',
	        :'body' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'to']
	        @to = attributes[:'to']
	      end
	      
	      if attributes[:'body']
	        @body = attributes[:'body']
	      end
	      
	    end
	  end
	
	
  end
end
