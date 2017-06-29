module CNovaApiLojistaV2
  module Model
	  # 
	  class TicketMessage < BaseObject
	    attr_accessor :created_at, :id, :user, :body, :visibility
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Data de criação do Ticket
	        :'created_at' => :'createdAt',
	        
	        # Id do Ticket
	        :'id' => :'id',
	        
	        # Usuário
	        :'user' => :'user',
	        
	        # Texto da mensagem
	        :'body' => :'body',
	        
	        # Se o consumidor final irá receber/visualizar a mensagem. Os valores permitidos são: &#39;private&#39; e &#39;public&#39;
	        :'visibility' => :'visibility'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'created_at' => :'DateTime',
	        :'id' => :'string',
	        :'user' => :'UserReference',
	        :'body' => :'string',
	        :'visibility' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'createdAt']
	        @created_at = attributes[:'createdAt']
	      end
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'user']
	        @user = attributes[:'user']
	      end
	      
	      if attributes[:'body']
	        @body = attributes[:'body']
	      end
	      
	      if attributes[:'visibility']
	        @visibility = attributes[:'visibility']
	      end
	      
	    end
	  end
	
	
  end
end
