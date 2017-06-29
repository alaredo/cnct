module CNovaApiLojistaV2
  module Model
	  # 
	  class NewTracking < BaseObject
	    attr_accessor :items, :occurred_at, :url, :number, :seller_delivery_id, :cte, :carrier, :invoice
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Lista de Order IDs dos produtos comprados no pedido e que irão ser atualizados pela operação de tracking
	        :'items' => :'items',
	        
	        # Data da ocorrência
	        :'occurred_at' => :'occurredAt',
	        
	        # Url para consulta na transportadora
	        :'url' => :'url',
	        
	        # ID do objeto na transportadora
	        :'number' => :'number',
	        
	        # ID de entrega do Lojista. Esse ID deve ser único para um pedido, não podendo haver repetição entre pedidos
	        :'seller_delivery_id' => :'sellerDeliveryId',
	        
	        # Conhecimento do Transporte Eletrônico
	        :'cte' => :'cte',
	        
	        # Informações sobre a transportadora
	        :'carrier' => :'carrier',
	        
	        # Informações sobre a Nota Fiscal da compra
	        :'invoice' => :'invoice'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'items' => :'array[string]',
	        :'occurred_at' => :'DateTime',
	        :'url' => :'string',
	        :'number' => :'string',
	        :'seller_delivery_id' => :'string',
	        :'cte' => :'string',
	        :'carrier' => :'Carrier',
	        :'invoice' => :'Invoice'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'occurredAt']
	        @occurred_at = attributes[:'occurredAt']
	      end
	      
	      if attributes[:'url']
	        @url = attributes[:'url']
	      end
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'sellerDeliveryId']
	        @seller_delivery_id = attributes[:'sellerDeliveryId']
	      end
	      
	      if attributes[:'cte']
	        @cte = attributes[:'cte']
	      end
	      
	      if attributes[:'carrier']
	        @carrier = attributes[:'carrier']
	      end
	      
	      if attributes[:'invoice']
	        @invoice = attributes[:'invoice']
	      end
	      
	    end
	  end
	
	
  end
end
