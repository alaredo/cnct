module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderTracking < BaseObject
	    attr_accessor :order, :items, :control_point, :occurred_at, :url, :number, :seller_delivery_id, :cte, :carrier, :invoice
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do pedido.
	        :'order' => :'order',
	        
	        # Itens do pedido
	        :'items' => :'items',
	        
	        # Status do pedido. Veja o serviço &lt;a href=&#39;#!/orders/getOrderByIdV2_get_0&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /orders/{orderId}&lt;/strong&gt;&lt;/a&gt; para consultar todos os controlPoits existentes.
	        :'control_point' => :'controlPoint',
	        
	        # Data da ocorrencia
	        :'occurred_at' => :'occurredAt',
	        
	        # Url para consulta na transportadora
	        :'url' => :'url',
	        
	        # ID do objeto na transportadora
	        :'number' => :'number',
	        
	        # ID único da entrega para o lojista no parceiro, não pode haver repetição deste ID
	        :'seller_delivery_id' => :'sellerDeliveryId',
	        
	        # Conhecimento de Transporte Eletôniconico
	        :'cte' => :'cte',
	        
	        # Informações da Transportadora
	        :'carrier' => :'carrier',
	        
	        # Informações sobre a Nota Fiscal de compra
	        :'invoice' => :'invoice'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'order' => :'OrderId',
	        :'items' => :'array[OrderItemReference]',
	        :'control_point' => :'string',
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
	
	      
	      if attributes[:'order']
	        @order = attributes[:'order']
	      end
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'controlPoint']
	        @control_point = attributes[:'controlPoint']
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
