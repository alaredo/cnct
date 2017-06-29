module CNovaApiLojistaV2
  module Model
	  # 
	  class NewTicketMessage < BaseObject
	    attr_accessor :user, :visibility, :body
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Informações de usuário
	        :'user' => :'user',
	        
	        # Se o consumidor final irá receber/visualizar a mensagem. Os valores permitidos são: &#39;private&#39; e &#39;public&#39;
	        :'visibility' => :'visibility',
	        
	        # Texto da mensagem
	        :'body' => :'body'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'user' => :'UserReference',
	        :'visibility' => :'string',
	        :'body' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'user']
	        @user = attributes[:'user']
	      end
	      
	      if attributes[:'visibility']
	        @visibility = attributes[:'visibility']
	      end
	      
	      if attributes[:'body']
	        @body = attributes[:'body']
	      end
	      
	    end
	  end
	
	
  end
end
