module CNovaApiLojistaV2
  module Model
	  # 
	  class GiftCard < BaseObject
	    attr_accessor :from, :to, :message
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Nome de quem está dando o presente
	        :'from' => :'from',
	        
	        # Nome de quem irá receber o presente
	        :'to' => :'to',
	        
	        # Mensagem que deverá ser enviada no cartão juntamente com o embrulho de presente
	        :'message' => :'message'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'from' => :'string',
	        :'to' => :'string',
	        :'message' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'from']
	        @from = attributes[:'from']
	      end
	      
	      if attributes[:'to']
	        @to = attributes[:'to']
	      end
	      
	      if attributes[:'message']
	        @message = attributes[:'message']
	      end
	      
	    end
	  end
	
	
  end
end
