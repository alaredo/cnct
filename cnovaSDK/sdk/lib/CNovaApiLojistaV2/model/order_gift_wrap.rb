module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderGiftWrap < BaseObject
	    attr_accessor :available, :value, :message_support, :gift_card
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Flag que indica se existe embrulho para presente para o produto
	        :'available' => :'available',
	        
	        # Valor cobrado pelo embrulho
	        :'value' => :'value',
	        
	        # Flag que indica se é possível incluir uma mensagem
	        :'message_support' => :'messageSupport',
	        
	        # Mensagem que deverá ser enviada juntamente com o embrulho de presente
	        :'gift_card' => :'giftCard'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'available' => :'boolean',
	        :'value' => :'double',
	        :'message_support' => :'boolean',
	        :'gift_card' => :'GiftCard'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'available']
	        @available = attributes[:'available']
	      end
	      
	      if attributes[:'value']
	        @value = attributes[:'value']
	      end
	      
	      if attributes[:'messageSupport']
	        @message_support = attributes[:'messageSupport']
	      end
	      
	      if attributes[:'giftCard']
	        @gift_card = attributes[:'giftCard']
	      end
	      
	    end
	  end
	
	
  end
end
