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

	def cadProduto
		Rails.logger.debug "=================================================="
        Rails.logger.debug "--------------------------> Cad Produto" 
        Rails.logger.debug "=================================================="
		product = CNovaApiLojistaV2::Model::Product.new();
		product.sku_seller_id = 'COMPUTADOR_xxx';
		product.product_seller_id = 'CEL_xxx';
		product.title = 'Computador Novo XXXX';
		product.description = '<h2>O novo produto de testes</h2>, Moto X';
		product.brand = 'Motorola';
		product.gtin = ['123456ft'];
		product.categories  = ['Teste>API'];
		product.images  = ['http://img.g.org/img1.jpeg'];

		prices = CNovaApiLojistaV2::Model::ProductLoadPrices.new();
		prices.default = 1999;
		prices.offer = 1799;

		product.price = prices;

		stock = CNovaApiLojistaV2::Model::ProductLoadStock.new();
		stock.quantity  = 100;
		stock.cross_docking_time = 0;

		product.stock  = stock;

		dimensions = CNovaApiLojistaV2::Model::Dimensions.new();
		dimensions.weight = 10;
		dimensions.length = 10;
		dimensions.width = 10;
		dimensions.height = 10;

		product.dimensions = dimensions;

		product_attribute = CNovaApiLojistaV2::Model::ProductAttribute.new();
		product_attribute.name  = 'cor';
		product_attribute.value = 'Verde';
		product.attributes = [product_attribute];
		products = [product];

		begin

		  CNovaApiLojistaV2::Api::LoadsApi.post_products(products);

		rescue => e

		  errorList = self.deserialize_errors(e.message);

		  if errorList != nil
		  	Rails.logger.debug "Cnova Erro List";
		    errorList.errors.each { |error|
		    	Rails.logger.debug "=="
		      	Rails.logger.debug "#{error.code} - #{error.message}";
		    }

		  else	
		    Rails.logger.debug e.message;

		  end

		end
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


	def getSellerItens
		begin
	  		get_seller_items_response = CNovaApiLojistaV2::Api::SellerItemsApi.get_seller_items(0, 100, {:site => 'EX'});
	  		puts get_seller_items_response.seller_items[0].sku_seller_id  #inspect

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
	end
end