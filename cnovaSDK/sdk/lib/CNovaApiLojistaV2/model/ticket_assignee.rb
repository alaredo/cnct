module CNovaApiLojistaV2
  module Model
	  # 
	  class TicketAssignee < BaseObject
	    attr_accessor :user, :visibility, :body
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Dados do usuário que fará o atendimento do Ticket
	        :'user' => :'user',
	        
	        # Se for &#39;public&#39;, o consumidor poderá ver, se for private o consumidor não receberá a mensagem
	        :'visibility' => :'visibility',
	        
	        # Mensagem a ser enviada como descrição da operação
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
