# SDK Ruby para API V2 de Lojistas

Provê os componentes Ruby para uso da API V2 de lojistas, disponibilizada pela CNova.

![Vantagens na utilização de SDKs](https://desenvolvedores.cnova.com/api-portal/sites/default/files/images/sdk_dev.png)

## Criando um API Client

Antes de utilizar as APIs, é necessário a criação de um client com as configurações de _base path_ e também as credenciais para acesso.

Abaixo segue o código de exemplo:

```ruby
require 'CNovaApiLojistaV2'
require 'CNovaApiLojistaV2/client'
require 'date'

CNovaApiLojistaV2::Client.configure do |config|
  config.scheme                  = "https"
  config.host                    = "sandbox.cnova.com"
  config.base_path               = "/api/v2/"
  # Alterar a chave informada com o valor de client_id disponível para sua APP
  config.api_key['client_id']    = 'll0rQx9SSshr'
  # Alterar a chave informada com o valor de access_token disponível para sua APP
  config.api_key['access_token'] = 'nllKgtXTMv0G'
end
```

## Operações auxiliares

Tratamento de estruturas de erros recebidas nas chamadas à API:

```ruby
def self.deserialize_errors(errors_json)
  
  errors = nil;
  
  begin
    errors = CNovaApiLojistaV2::Model::Errors.new() and errors.build_from_hash(eval(errors_json));
  rescue Exception => e
    errors = nil;
  end
  
  return errors;
  
end
```

Formatação de datas para consultas em períodos específicos:

```ruby
def self.format_date_range(initial_date, final_date)
  
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
```

## APIs Disponíveis

A seguir, são apresentadas as APIs e exemplos com as as principais operações do Marketplace.

### Loads API

API utilizada para operações de carga.

Carga de produtos:

```ruby
product = CNovaApiLojistaV2::Model::Product.new();
product.sku_seller_id = 'CEL_MOTO_X';
product.product_seller_id = 'CEL';
product.title = 'Produto de testes Motorola Moto X';
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

    errorList.errors.each { |error|
      puts "#{error.code} - #{error.message}";
    }

  else

    puts e.message;

  end

end
```

Consulta de cargas enviadas:

```ruby
begin

  get_products_response = CNovaApiLojistaV2::Api::LoadsApi.get_products(0, 100);
  puts get_products_response.inspect;

rescue => e

  errorList = self.deserialize_errors(e.message);

  if errorList  != nil

    errorList.errors.each { |error|
      puts "#{error.code} - #{error.message}";
    }

  else

    puts e.message;

  end

end
```

Consulta um produto específico da carga enviada:

```ruby
begin

  get_product_with_errors_response = CNovaApiLojistaV2::Api::LoadsApi.get_product('CEL_LGFlex');
  puts get_product_with_errors_response.inspect;

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
```

Modificação do tracking de uma ou mais ordens, utilizando a API Loads:

```ruby
orders_trackings = CNovaApiLojistaV2::Model::OrdersTrackings.new();

order_tracking = CNovaApiLojistaV2::Model::OrderTracking.new();

order_id = CNovaApiLojistaV2::Model::OrderId.new();
order_id.id = 123;

order_tracking.order = order_id;
order_tracking.control_point = 'ABC';
order_tracking.cte = '123';

oif = CNovaApiLojistaV2::Model::OrderItemReference.new();
oif.sku_seller_id = '123456';
oif.quantity = 1;

order_tracking.items = [oif];

order_tracking.occurred_at = DateTime.now.to_s;
order_tracking.seller_delivery_id = '99995439701';
order_tracking.number = '01092014';
order_tracking.url = 'servico envio2';

carrier = CNovaApiLojistaV2::Model::Carrier.new();
carrier.cnpj = '72874279234';
carrier.name = 'Sedex';

order_tracking.carrier = carrier;

invoice = CNovaApiLojistaV2::Model::Invoice.new();
invoice.cnpj = '72874279234';
invoice.number = '123';
invoice.serie = '456';
invoice.issued_at = DateTime.now.to_s;
invoice.access_key = '01091111111111111111111111111111111111101092';
invoice.link_xml = 'link xlm teste5';
invoice.link_danfe = 'link nfe teste5';

order_tracking.invoice = invoice;

orders_trackings.trackings = [order_tracking];

begin

  CNovaApiLojistaV2::Api::LoadsApi.post_orders_tracking_sent(orders_trackings);

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
```

### Seller Items API

API utilizada para gerenciamento dos recursos enviados pelo lojista.

Consulta de seller items:

```ruby
begin

  get_seller_items_response = CNovaApiLojistaV2::Api::SellerItemsApi.get_seller_items(0, 100, {:site => 'EX'});

  puts get_seller_items_response.inspect;

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
```

Alteração de preço:

```ruby
begin

  prices = CNovaApiLojistaV2::Model::Prices.new();
  prices.default = 100;
  prices.offer = 100;

  CNovaApiLojistaV2::Api::SellerItemsApi.put_seller_item_prices('31.0019', prices);

rescue => e
  puts e.inspect;
end
```

Alteração de estoque:

```ruby
begin

  stock = CNovaApiLojistaV2::Model::Stock.new();
  stock.quantity = 200;
  stock.cross_docking_time = 0;

  CNovaApiLojistaV2::Api::SellerItemsApi.put_seller_item_stock('31.0019', stock);

rescue => e
  puts e.inspect;
end
```

### Orders API

API utilizada para gerenciamento de pedidos.

Consulta todas as ordens:

```ruby
begin
  
  get_orders_response = CNovaApiLojistaV2::Api::OrdersApi.get_orders(0, 100);
  puts get_orders_response.inspect;
  
rescue => e
  puts e.inspect;
end
```

Consulta todas as ordens com status "novo":

```ruby
begin

  purchased_at = self.format_date_range(nil, DateTime.now);

  get_orders_status_new_response =  CNovaApiLojistaV2::Api::OrdersApi.get_orders_by_status_new(0, 100, {:purchased_at => purchased_at});
  puts get_orders_status_new_response.inspect;

rescue => e
  puts e.inspect;
end
```

Criação de um novo tracking, notificando o envio da ordem:

```ruby
new_tracking = CNovaApiLojistaV2::Model::NewTracking.new();

new_tracking.items = ['23258312-1' ,'23258312-2'];

new_tracking.occurred_at = DateTime.now;

new_tracking.seller_delivery_id = '99995439701';
new_tracking.number = '01092014';
new_tracking.url = 'servico envio2';

carrier = CNovaApiLojistaV2::Model::Carrier.new();
carrier.cnpj = '72874279234';
carrier.name = 'Sedex';

new_tracking.carrier = carrier;

invoice = CNovaApiLojistaV2::Model::Invoice.new();
invoice.cnpj = '72874279234';
invoice.number = '123';
invoice.serie = '456';
invoice.issued_at = DateTime.now;
invoice.access_key = '01091111111111111111111111111111111111101092';
invoice.link_xml = 'link xlm teste5';
invoice.link_danfe = 'link nfe teste5';

new_tracking.invoice = invoice;

begin

  CNovaApiLojistaV2::Api::OrdersApi.post_order_tracking_sent(new_tracking, '1024101');

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
```

Consulta de ordens com status "enviado":

```ruby
begin

  get_orders_response = CNovaApiLojistaV2::Api::OrdersApi.get_orders_by_status_sent(0, 100);
  puts get_orders_response.inspect;

rescue => e
  puts e.inspect;
end
```

### Tickets API

API utilizada para gerenciamento de tickets.

Criação de um novo ticket:

```ruby
new_ticket = CNovaApiLojistaV2::Model::NewTicket.new();
new_ticket.to = 'atendimento+OS_706000500000@mktp.extra.com.br';
new_ticket.body = 'Corpo da mensagem do ticket';

begin
  CNovaApiLojistaV2::Api::TicketsApi.post_ticket(new_ticket);
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
```

Consulta ticket com status "Aberto":

```ruby
begin

  tickets = CNovaApiLojistaV2::Api::TicketsApi.get_tickets(0, 5, {:status => 'opened', :code => '439211092852'});
  puts tickets.inspect;

rescue => e
  puts e.inspect;
end 
```

Alteração do status do ticket:

```ruby
begin

  ticket_status = CNovaApiLojistaV2::Model::TicketStatus.new();
  ticket_status.ticket_status = 'Em Acompanhamento';

  CNovaApiLojistaV2::Api::TicketsApi.put_ticket_status('123123', ticket_status);

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
```

### Categories API

API utilziada na obtenção da árvore de categorias disponível.

Consulta as categorias disponíveis:

```ruby 
begin

  get_categories_response = CNovaApiLojistaV2::Api::CategoriesApi.get_categories(0, 100);

  get_categories_response.categories.each { |categorie|
    puts "#{categorie.id} - #{categorie.name}";
  }

rescue => e
  puts e.inspect;
end
```

### Sites API

API utilizada na obtenção da lista de sites.

Consulta os sites disponíveis:

```ruby 
begin

  get_sites_response = CNovaApiLojistaV2::Api::SitesApi.get_sites();
  puts get_sites_response.inspect;

rescue => e
  puts e.inspect;
end
```

### Warehouses API

API utilizada na obtenção da lista de warehouses (armazéns).

Consulta as warehouses disponíveis:

```ruby 
begin

  get_warehouses_response = CNovaApiLojistaV2::Api::WarehousesApi.get_warehouses();
  puts get_warehouses_response.inspect;

rescue => e
  puts e.inspect;
end
```