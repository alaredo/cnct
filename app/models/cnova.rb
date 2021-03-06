 class Cnova
  require 'CNovaApiLojistaV2'
	require 'CNovaApiLojistaV2/client'
	require 'date'

	CNovaApiLojistaV2::Client.configure do |config|
			config.scheme                  = "https"
		  config.host                    = "sandbox.cnova.com"
			config.base_path               = "/api/v2/"
			# Alterar a chave informada com o valor de client_id disponível para sua APP 
			config.api_key['client_id']    = 'Pd7q14bN5XGV'
			# Alterar a chave informada com o valor de access_token disponível para sua APP
			config.api_key['access_token'] = 'zaqhElPMrx8R'
		end

	def new
		logger.debug "=================================================="
    logger.debug "--------------------------> New Cnova" 
    logger.debug "=================================================="
		
		
	end

	def deserialize_errors(errors_json)
  
		errors = nil;
		begin
		    errors = CNovaApiLojistaV2::Model::Errors.new() and errors.build_from_hash(eval(errors_json));
		  	rescue Exception => e
		    	errors = nil;
		  	end
		return errors;
  
	end

	def format_date_range(initial_date, final_date)
	  dt_ini = '*';
	  dt_end = '*';
	  
	  if (initial_date != nil && initial_date.kind_of?(DateTime))
	    dt_ini = initial_date.to_s;
	  end

	  if (final_date != nil && final_date.kind_of?(DateTime))
	    dt_end = final_date.to_s;
	  end

	  return dt_ini + ',' + dt_end;
	end

	def cadProduto(prod)
		Rails.logger.debug "=================================================="
    Rails.logger.debug "--------------------------> Cad Produto" 
    Rails.logger.debug "=================================================="
        
		product = CNovaApiLojistaV2::Model::Product.new();
		product.sku_seller_id = prod.sku_seller_id;
		product.product_seller_id = prod.product_seller_id;
		product.title = prod.title;
		product.description = prod.descricao;
		product.brand = prod.brand;
		product.gtin = [prod.gtin];
		product.categories  = [prod.categories];
		product.images  = [prod.imagem1];

		prices = CNovaApiLojistaV2::Model::ProductLoadPrices.new();
		prices.default = prod.valor;
		prices.offer = prod.valorOferta;

		product.price = prices;

		stock = CNovaApiLojistaV2::Model::ProductLoadStock.new();
		stock.quantity  = prod.saldo;
		stock.cross_docking_time = 0;

		product.stock  = stock;

		dimensions = CNovaApiLojistaV2::Model::Dimensions.new();
		dimensions.weight = prod.weight;
		dimensions.length = prod.length;
		dimensions.width = prod.width;
		dimensions.height = prod.height;

		product.dimensions = dimensions;

		product_attribute = CNovaApiLojistaV2::Model::ProductAttribute.new();
		product_attribute.name  = 'cor';
		product_attribute.value = 'Verde';
		product.attributes = [product_attribute];
		products = [product];

    response = Response.new
    response.code = "666"
    response.message = ""
		begin
		  r = CNovaApiLojistaV2::Api::LoadsApi.post_products(products);  
		  aux = Aux.new
		  aux.Logue(" r ----> " + r.inspect)
		rescue => e
		  aux = Aux.new
		  aux.Logue("rescue ---->" + e.inspect)
		  errorList = self.deserialize_errors(e.message);
		  if errorList != nil
		  	Rails.logger.debug "Cnova Erro List";
		    errorList.errors.each { |error|
		      response.code = error.code
		      response.message = error.message
		    	Rails.logger.debug "=="
		      	Rails.logger.debug "#{error.code} - #{error.message}";
		    }
		  else
		    response.code = e.code
        response.message = e.message
		    Rails.logger.debug "----- CNOVA RETORNO ------"
		    Rails.logger.debug e.message;
		  end
		end
		response
	end

	def loadProdutos
		begin
		  	get_products_response = CNovaApiLojistaV2::Api::LoadsApi.get_products(10, 50);
		  	Rails.logger.debug "=================================================="
		  	Rails.logger.debug get_products_response.inspect
		rescue => e
	  		errorList = self.deserialize_errors(e.message);
		  	if errorList  != nil
		  		Rails.logger.debug "Cnova Erro List";
		  		Rails.logger.debug "=================================================="
				errorList.errors.each { |error|
		      		Rails.logger.debug "#{error.code} - #{error.message}";
		      	Rails.logger.debug "=================================================="
		    }
		  	else
		    	Rails.logger.debug e.message;
		    end
		end
	end

	def getProduto
		begin
		  get_product_with_errors_response = CNovaApiLojistaV2::Api::LoadsApi.get_product('COMPUTADOR_ALE');
		  puts get_product_with_errors_response.inspect;
		rescue => e
		  errorList = self.deserialize_errors(e.message);
		  if errorList != nil
		    errorList.errors.each { |error|
		      puts "#{error.code} - #{error.message}";
		    }/market_empresas
		  else
		    puts e.message;
		  end
		end
	end


	def getSellerItens(code)
	  @getSellerItems = []
		begin
	  		get_seller_items = CNovaApiLojistaV2::Api::SellerItemsApi.get_seller_items(0, 100, {:site => code});
	  		puts get_seller_items.class
	  		
	  	  get_seller_items.seller_items.each { |seller_item|
	  	    getSellerItem = GetSellerItem.new
	  	    getSellerItem.sku_seller_id = seller_item.sku_seller_id
	  	    getSellerItem.title = seller_item.title
	  	    getSellerItem.brand = seller_item.brand
	  		  
          @getSellerItems.push (getSellerItem)
	  		}
	  		
	  		#puts get_seller_items_response.seller_items.inspect #seller_items[0].sku_seller_id
        
		rescue => e

		  	errorList = self.deserialize_errors(e.message);
		  	if errorList != nil
		    	errorList.errors.each { |error|
		      		puts "#{error.code} - #{error.message}";
		    	}
		  	else
		    	puts e.message;
			  end
			
		end
		
		@getSellerItems
	end
	
	def getOrders
    Rails.logger.debug "=================================================="
    Rails.logger.debug "--------------------------> Get Pedidos" 
    Rails.logger.debug "=================================================="

	  begin
      get_orders_response = CNovaApiLojistaV2::Api::OrdersApi.get_orders(0, 100);
      #puts get_orders_response.inspect;
    rescue => e
      puts e.inspect;
    end
	end
	
	def sendOrder(order)
	  ordemItem = CNovaApiLojistaV2::Model::OrderItemSandbox.new();
	  ordemItem.sku_seller_id = "COMPUTADOR_xxx"
	  ordemItem.name = "Computador Novo XXXX"
	  ordemItem.sale_price = 100 
	  ordemItem.quantity = 1
	  
	  items = Array.new
	  items << ordemItem
	  
	  billingAddress = CNovaApiLojistaV2::Model::BillingAddress.new()
	  billingAddress.address = "Rua xyz"
    billingAddress.number = "231"
    billingAddress.complement = "casa"
    billingAddress.quarter = "1"
    billingAddress.reference = "lala"
    billingAddress.city = "Sao Paulo"
    billingAddress.state = "SP"
    billingAddress.country_id = "BR"
    billingAddress.zip_code = "13022234"
    #billingAddress.recipient_name = "Maria"
    
    phonesSandbox = CNovaApiLojistaV2::Model::PhonesSandbox.new()
    phonesSandbox.mobile = "11202039283"
    phonesSandbox.home = "11202039283"
    phonesSandbox.office = "11202039283"
	  
	  customerCnova = CNovaApiLojistaV2::Model::CustomerSandbox.new()
	  customerCnova.name = order.customer.name
	  customerCnova.gender = order.customer.gender
    customerCnova.document_number = order.customer.document_number
    customerCnova.type = order.customer.typeDoc
    customerCnova.email = order.customer.email
    customerCnova.born_at = order.customer.birth_date
    customerCnova.billing = billingAddress
    customerCnova.phones = phonesSandbox
	  
	  orderItems = OrderItem.where("order_id=?", order.id)
    @aux = Aux.new
    @aux.Logue( items )
    
    sellerCnova = CNovaApiLojistaV2::Model::Seller.new()
    sellerCnova.id = 1
	  
	  cnovaOrder = CNovaApiLojistaV2::Model::Order.new();
	 # cnovaOrder.id = order.id;
   # cnovaOrder.order_site_id = order.order_site_id;
    cnovaOrder.site = order.site
  #  cnovaOrder.payment_type = order.payment_type
  #  cnovaOrder.purchased_at = order.purcharsed_at
  # cnovaOrder.approved_at = order.approved_at
  #  cnovaOrder.updated_at = order.updated_at
  #  cnovaOrder.status = order.status
  #  cnovaOrder.total_amount = order.total_amount
  #  cnovaOrder.total_discount_amount = order.total_discount_amount
 #   cnovaOrder.billing = order.billingAddress  
  #  cnovaOrder.freight = order.freight
    cnovaOrder.items = items
    cnovaOrder.customer = customerCnova
 #   cnovaOrder.shipping = order.shippingAddress
   # cnovaOrder.trackings = order.trackings
   # cnovaOrder.seller = order.loja
    
    begin
      sendOrderCnova = CNovaApiLojistaV2::Api::OrdersApi.post_order(cnovaOrder)
    rescue => e
      puts e.inspect;
      
    end
	end
	
	
	
	
end