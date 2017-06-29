module CNovaApiLojistaV2
  module Model
	  # 
	  class OrderStatusNew < BaseObject
	    attr_accessor :id, :order_site_id, :site, :payment_type, :purchased_at, :approved_at, :updated_at, :status, :total_amount, :total_discount_amount, :billing, :customer, :freight, :items, :trackings, :seller
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do pedido gerado para o lojista
	        :'id' => :'id',
	        
	        # ID do pedido gerado no site e que é passado ao cliente
	        :'order_site_id' => :'orderSiteId',
	        
	        # Site para o qual o pedido foi criado. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	        :'site' => :'site',
	        
	        # Código do meio de pagamento. Consulte todos os tipos de pagamento disponíveis em &lt;a href=&#39;#!/orders/getOrderByIdV2_get_0&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /orders/{orderId}&lt;/strong&gt;&lt;/a&gt;
	        :'payment_type' => :'paymentType',
	        
	        # Data da compra
	        :'purchased_at' => :'purchasedAt',
	        
	        # Data de aprovação de pagamento do pedido
	        :'approved_at' => :'approvedAt',
	        
	        # Última data de atualização do pedido
	        :'updated_at' => :'updatedAt',
	        
	        # Status atual do pedido
	        :'status' => :'status',
	        
	        # Total do pedido
	        :'total_amount' => :'totalAmount',
	        
	        # Total de descontos do pedido
	        :'total_discount_amount' => :'totalDiscountAmount',
	        
	        # Informações de cobrança
	        :'billing' => :'billing',
	        
	        # Informações do cliente
	        :'customer' => :'customer',
	        
	        # Informações de frete do pedido
	        :'freight' => :'freight',
	        
	        # Lista de itens do pedido
	        :'items' => :'items',
	        
	        # Informações de tracking do pedido
	        :'trackings' => :'trackings',
	        
	        # Informações de venda
	        :'seller' => :'seller'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'order_site_id' => :'string',
	        :'site' => :'string',
	        :'payment_type' => :'int',
	        :'purchased_at' => :'DateTime',
	        :'approved_at' => :'DateTime',
	        :'updated_at' => :'DateTime',
	        :'status' => :'string',
	        :'total_amount' => :'double',
	        :'total_discount_amount' => :'double',
	        :'billing' => :'BillingAddress',
	        :'customer' => :'Customer',
	        :'freight' => :'Freight',
	        :'items' => :'array[OrderItem]',
	        :'trackings' => :'array[Tracking]',
	        :'seller' => :'Seller'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'orderSiteId']
	        @order_site_id = attributes[:'orderSiteId']
	      end
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	      if attributes[:'paymentType']
	        @payment_type = attributes[:'paymentType']
	      end
	      
	      if attributes[:'purchasedAt']
	        @purchased_at = attributes[:'purchasedAt']
	      end
	      
	      if attributes[:'approvedAt']
	        @approved_at = attributes[:'approvedAt']
	      end
	      
	      if attributes[:'updatedAt']
	        @updated_at = attributes[:'updatedAt']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'totalAmount']
	        @total_amount = attributes[:'totalAmount']
	      end
	      
	      if attributes[:'totalDiscountAmount']
	        @total_discount_amount = attributes[:'totalDiscountAmount']
	      end
	      
	      if attributes[:'billing']
	        @billing = attributes[:'billing']
	      end
	      
	      if attributes[:'customer']
	        @customer = attributes[:'customer']
	      end
	      
	      if attributes[:'freight']
	        @freight = attributes[:'freight']
	      end
	      
	      if attributes[:'items']
	        if (value = attributes[:'items']).is_a?(Array)
	          @items = value
	        end
	      end
	      
	      if attributes[:'trackings']
	        if (value = attributes[:'trackings']).is_a?(Array)
	          @trackings = value
	        end
	      end
	      
	      if attributes[:'seller']
	        @seller = attributes[:'seller']
	      end
	      
	    end
	  end
	
	
  end
end
