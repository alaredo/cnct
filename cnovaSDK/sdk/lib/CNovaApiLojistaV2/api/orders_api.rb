require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class OrdersApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Recupera detalhes de todos os pedidos
	    # &lt;p&gt;Operação utilizada para retornar informações de todos os pedidos, independente do status em que se encontram os mesmos.&lt;/p&gt;&lt;p&gt;Observação:&lt;br/&gt;Os campos retornados dependem do status do pedido, por exemplo, no status new, as informações de entrega são suprimidas para evitar a entrega antes da confirmação do pagamento. Nesta documentação estão presentes todos os campos de Pedido. Para saber quais campos são retornados para cada status do pedido, basta consultar a documentação de cada um dos métodos de consulta de pedidos por status.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetOrdersResponse]
	    def self.get_orders(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para criar um pedido
	    # &lt;p&gt;Operação que cria um pedido.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39; &gt;Esta operação só está disponível em ambiente de Sandbox para que seja possível executar todo o fluxo de testes da aplicação.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;É necessário aguardar cerca de 30 minutos para que o pedido seja indexado. Após esse período será possível consultar os pedidos através do serviço &lt;a href=&#39;#!/orders/getOrdersByStatusNew_get_2&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /orders/status/new&lt;/strong&gt;&lt;/a&gt;. O Pedido só pode ser aprovado após aparecer com status &lt;strong&gt;NEW&lt;/strong&gt;.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_orders_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param order Objeto para criação do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order(order, opts = {})
	      
	      # verify the required parameter 'order' is set
	      raise "Missing the required parameter 'order' when calling post_order" if order.nil?
	      
	
	      # resource path
	      path = "/orders".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(order)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera uma lista de pedidos Aprovados
	    # &lt;p&gt;Recupera uma lista de pedidos com status Aprovado que estão relacionados com o token do lojista informado. Este serviço irá retornar um ou mais pedidos que já possua pagamento aprovado, ou seja, são pedidos que podem ter o processo de entrega iniciado de imediato.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :approved_at Data de aprovação. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;approvedAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;approvedAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;approvedAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_approved(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_approved" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_approved" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/approved".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'approvedAt'] = opts[:'approved_at'] if opts[:'approved_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para realizar a aprovação de um pedido (SANDBOX)
	    # &lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação está disponível apenas para SANDBOX.&lt;/p&gt;&lt;p&gt;Operação para realizar a aprovação de um pedido.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_items_status_approved(order_id, opts = {})
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling put_seller_items_status_approved" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/status/approved/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json; charset=utf-8']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Retorna uma lista de pedidos Cancelados
	    # &lt;p&gt;Retorna uma lista de pedidos Cancelados que estão relacionados com o token do lojista informado.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :canceled_at Data de cancelemento. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;canceledAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;canceledAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;canceledAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_canceled(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_canceled" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_canceled" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/canceled".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'canceledAt'] = opts[:'canceled_at'] if opts[:'canceled_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera uma lista de pedidos Entregues
	    # &lt;p&gt;Recupera uma lista de pedidos Entregues que estão relacionados com o token do lojista informado. Este estado representa os pedidos cujos itens foram todos entregues.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :delivered_at Data de entrega. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;deliveredAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;deliveredAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;deliveredAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_delivered(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_delivered" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_delivered" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/delivered".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'deliveredAt'] = opts[:'delivered_at'] if opts[:'delivered_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera uma lista de pedidos Novos
	    # &lt;p&gt;Recupera uma lista de pedidos com status Novo que estão relacionados com o token do lojista informado. Este estado representa os pedidos fechados que ainda não foram aprovados, ou seja, pedidos que ainda não devem ser entregues, pois estão aguardado o pagamento. Alguns campos não serão enviados, para evitar a entrega antes da confirmação do pagamento.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :purchased_at Data de compra. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersStatusNewResponse]
	    def self.get_orders_by_status_new(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_new" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_new" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/new".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'purchasedAt'] = opts[:'purchased_at'] if opts[:'purchased_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersStatusNewResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Retorna uma lista de pedidos Parcialmente Entregues
	    # &lt;p&gt;Retorna uma lista de pedidos Parcialmente Entregues que estão relacionados com o token do lojista informado.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt; Os pedidos ficam nesse estado apenas quando ocorreu quebra de entrega e alguns produtos da lista completa já foram sinalizados como Entregues pelo serviço &lt;a href=&#39;#!/orders/persistTracking_post_10&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;POST /orders/{orderId}/trackings/delivered&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :sent_at Data de envio. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_partially_delivered(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_partially_delivered" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_partially_delivered" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/partiallyDelivered".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'sentAt'] = opts[:'sent_at'] if opts[:'sent_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Retorna uma lista de pedidos Parcialmente Enviados
	    # &lt;p&gt;Retorna uma lista de pedidos Parcialmente Enviados que estão relacionados com o token do lojista informado. Ocorre quando um ou mais itens foram enviados, porém ainda existem itens que não foram enviados.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt; Os pedidos ficam nesse estado apenas quando ocorreu quebra de entrega e alguns produtos da lista completa já foram sinalizados como Enviados pelo serviço &lt;a href=&#39;#!/orders/persistTracking_post_9&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;POST /orders/{orderId}/trackings/sent&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :sent_at Data de envio. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :customer_name Nome do Cliente.
	    # @option opts [string] :customer_document_number Documento do Cliente.
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_partially_sent(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_partially_sent" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_partially_sent" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/partiallySent".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'sentAt'] = opts[:'sent_at'] if opts[:'sent_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera uma lista de pedidos Enviados
	    # &lt;p&gt;Recupera uma lista de pedidos com status Enviado, que estão relacionados com o token do lojista informado. Este estado representa os pedidos cujos itens foram todos entregues.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Obs.: Os emails transacionais que reportam o status do pedido para os clientes devem ser desabibilitados. Esse tipo de email já é enviado pelo Marketplace.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :sent_at Data de envio. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;sentAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas
	    # @option opts [string] :customer_name Nome do Cliente
	    # @option opts [string] :customer_document_number Documento do Cliente
	    # @return [GetOrdersResponse]
	    def self.get_orders_by_status_sent(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_by_status_sent" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_by_status_sent" if _limit.nil?
	      
	
	      # resource path
	      path = "/orders/status/sent".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'sentAt'] = opts[:'sent_at'] if opts[:'sent_at']
	      query_params[:'customer.name'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'customer.documentNumber'] = opts[:'customer_document_number'] if opts[:'customer_document_number']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetOrdersResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera detalhes do pedido informado
	    # &lt;p&gt;Recupera detalhes do pedido informado.&lt;/p&gt;&lt;p&gt;Observação:&lt;br/&gt;Os campos retornados dependem do status do pedido, por exemplo, no status new, as informações de entrega são suprimidas para evitar a entrega antes da confirmação do pagamento. Nesta documentação estão presentes todos os campos de Pedido. Para saber quais campos são retornados para cada status do pedido, basta consultar a documentação de cada um dos métodos de consulta de pedidos por status.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;Deve ser informado um pedido válido.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Abaixo seguem os valores possíveis para o tipo de pagamento (paymentType)&lt;table class=&#39;table&#39;&gt;&lt;tr&gt;&lt;th&gt;Código&lt;/th&gt;&lt;th&gt;Descrição&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;1&lt;/td&gt;&lt;td&gt;Cartão de Crédito&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;2&lt;/td&gt;&lt;td&gt;Boleto&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;4&lt;/td&gt;&lt;td&gt;Cupom&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;5&lt;/td&gt;&lt;td&gt;Transferência&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Segue abaixo a lista de Status existentes para pedidos. Os status representam a situação consolidada do pedido:&lt;br/&gt;&lt;table class = &#39;table&#39;&gt;&lt;tr&gt;&lt;th&gt;Código&lt;/th&gt;&lt;th&gt;Descrição&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;NEW&lt;/td&gt;&lt;td&gt;Novo&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;GDE&lt;/td&gt;&lt;td&gt;Entregas geradas&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PEN&lt;/td&gt;&lt;td&gt;Pagamento pendente&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PAY&lt;/td&gt;&lt;td&gt;Pagamento aprovado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;SHP&lt;/td&gt;&lt;td&gt;Enviado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;DLV&lt;/td&gt;&lt;td&gt;Entregue&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Segue abaixo a lista de Control Points existentes. Os Control Points estão presentes em cada operação de tracking e representam o status de cada operação realizada no pedido:&lt;br/&gt;&lt;table class = &#39;table&#39;&gt;&lt;tr&gt;&lt;th&gt;Código&lt;/th&gt;&lt;th&gt;Sequência / ordem&lt;/th&gt;&lt;th&gt;Descrição&lt;/th&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AAP&lt;/td&gt;&lt;td&gt;1&lt;/td&gt;&lt;td&gt;Aguardando a confirmação do pagamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ACR&lt;/td&gt;&lt;td&gt;2&lt;/td&gt;&lt;td&gt;Análise de dados&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ADT&lt;/td&gt;&lt;td&gt;3&lt;/td&gt;&lt;td&gt;Data de entrega ajustada&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AEG&lt;/td&gt;&lt;td&gt;4&lt;/td&gt;&lt;td&gt;Aguardando entregas pagamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AES&lt;/td&gt;&lt;td&gt;5&lt;/td&gt;&lt;td&gt;Disponibilidade de estoque&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AGR&lt;/td&gt;&lt;td&gt;6&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AMC&lt;/td&gt;&lt;td&gt;7&lt;/td&gt;&lt;td&gt;Análise de dados&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AR1&lt;/td&gt;&lt;td&gt;8&lt;/td&gt;&lt;td&gt;Aviso de Entrega 1&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AR2&lt;/td&gt;&lt;td&gt;9&lt;/td&gt;&lt;td&gt;Aviso de Entrega 2&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ARE&lt;/td&gt;&lt;td&gt;10&lt;/td&gt;&lt;td&gt;Aguardando Retirada&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ARL&lt;/td&gt;&lt;td&gt;11&lt;/td&gt;&lt;td&gt;Disponível para Entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ATR&lt;/td&gt;&lt;td&gt;12&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AU1&lt;/td&gt;&lt;td&gt;13&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AU2&lt;/td&gt;&lt;td&gt;14&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AU3&lt;/td&gt;&lt;td&gt;15&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;AVA&lt;/td&gt;&lt;td&gt;16&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;CAN&lt;/td&gt;&lt;td&gt;17&lt;/td&gt;&lt;td&gt;Entrega Cancelada&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;CAP&lt;/td&gt;&lt;td&gt;18&lt;/td&gt;&lt;td&gt;Análise de dados concluída&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;DAE&lt;/td&gt;&lt;td&gt;19&lt;/td&gt;&lt;td&gt;Data de Entrega Ajustada&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;DIV&lt;/td&gt;&lt;td&gt;20&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;DNE&lt;/td&gt;&lt;td&gt;21&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;EA1&lt;/td&gt;&lt;td&gt;22&lt;/td&gt;&lt;td&gt;Destinatário Ausente - 1ª tentativa&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;EAR&lt;/td&gt;&lt;td&gt;23&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;END&lt;/td&gt;&lt;td&gt;24&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ENL&lt;/td&gt;&lt;td&gt;25&lt;/td&gt;&lt;td&gt;Endereço não localizado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ENT&lt;/td&gt;&lt;td&gt;26&lt;/td&gt;&lt;td&gt;Entrega concluída&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;EPR&lt;/td&gt;&lt;td&gt;27&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ETR&lt;/td&gt;&lt;td&gt;28&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;EXT&lt;/td&gt;&lt;td&gt;29&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;FEL&lt;/td&gt;&lt;td&gt;30&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;FIS&lt;/td&gt;&lt;td&gt;31&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;IED&lt;/td&gt;&lt;td&gt;32&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;INS&lt;/td&gt;&lt;td&gt;33&lt;/td&gt;&lt;td&gt;Produto instalado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;LIF&lt;/td&gt;&lt;td&gt;34&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;MDS&lt;/td&gt;&lt;td&gt;35&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;MPA&lt;/td&gt;&lt;td&gt;36&lt;/td&gt;&lt;td&gt;Aguardando a confirmação do pagamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;NFS&lt;/td&gt;&lt;td&gt;37&lt;/td&gt;&lt;td&gt;Nota Fiscal emitida&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;OCO&lt;/td&gt;&lt;td&gt;38&lt;/td&gt;&lt;td&gt;Entrega concluída&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PAP&lt;/td&gt;&lt;td&gt;39&lt;/td&gt;&lt;td&gt;Pagamento aprovado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PEI&lt;/td&gt;&lt;td&gt;40&lt;/td&gt;&lt;td&gt;Pedido incluso&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PNA&lt;/td&gt;&lt;td&gt;41&lt;/td&gt;&lt;td&gt;Pagamento não aprovado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;PRE&lt;/td&gt;&lt;td&gt;42&lt;/td&gt;&lt;td&gt;Pedido recusado pelo Cliente&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;REC&lt;/td&gt;&lt;td&gt;43&lt;/td&gt;&lt;td&gt;Análise de dados não confirmada&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;RED&lt;/td&gt;&lt;td&gt;44&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;REO&lt;/td&gt;&lt;td&gt;45&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;REV&lt;/td&gt;&lt;td&gt;46&lt;/td&gt;&lt;td&gt;Pagamento não aprovado&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;RIE&lt;/td&gt;&lt;td&gt;47&lt;/td&gt;&lt;td&gt;Impossibilidade de entrega do produto&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ROT&lt;/td&gt;&lt;td&gt;48&lt;/td&gt;&lt;td&gt;Entrega em andamento&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;ROU&lt;/td&gt;&lt;td&gt;49&lt;/td&gt;&lt;td&gt;Dificuldade na entrega&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;RTD&lt;/td&gt;&lt;td&gt;50&lt;/td&gt;&lt;td&gt;Em rota de devolução&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;VES&lt;/td&gt;&lt;td&gt;51&lt;/td&gt;&lt;td&gt;Disponibilidade de estoque&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;WMS&lt;/td&gt;&lt;td&gt;52&lt;/td&gt;&lt;td&gt;Separação e embalagem&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/p&gt;
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [Order]
	    def self.get_order_by_id(order_id, opts = {})
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling get_order_by_id" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::Order.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera detalhes de um item específico do pedido
	    # &lt;p&gt;Recupera detalhes de um item específico do pedido.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;Deve ser informado um pedido e um item do pedido válidos.&lt;/p&gt;
	    # @param order_id ID do pedido.
	    # @param sku_seller_id SKU Seller ID do item de pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [OrderItem]
	    def self.get_order_by_id_and_sku_sller_id(order_id, sku_seller_id, opts = {})
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling get_order_by_id_and_sku_sller_id" if order_id.nil?
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling get_order_by_id_and_sku_sller_id" if sku_seller_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/items/{skuSellerId}".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s).sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::OrderItem.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para confirmar o cancelamento de um item de pedido
	    # &lt;p&gt;Operação utilizada para confirmar o cancelamento de um item de pedido que foi aberto pelo cliente (via protocolo) ou cancelamento acionado pelo lojista.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Quebra de envio&lt;/strong&gt;&lt;br/&gt;No caso de quebra de envio, passe apenas os itens e a quantidade que serão enviados.&lt;br/&gt;O controle de quais itens foram enviados deverá ser realizado pela sua Aplicação.&lt;br/&gt;&lt;br/&gt;Para notificar o envio de todos os produtos, passe a lista contendo todos os itens e quantidade total.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_tracking_sent_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param body 
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order_tracking_cancelation(body, order_id, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling post_order_tracking_cancelation" if body.nil?
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling post_order_tracking_cancelation" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/trackings/cancel".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Registra uma nova operação de tracking de entrega
	    # &lt;p&gt;Registra uma nova operação de tracking de Entrega para os itens do pedido.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Quebra de envio&lt;/strong&gt;&lt;br/&gt;No caso de quebra de envio, passe apenas os itens e a quantidade que foram entregues.&lt;br/&gt;O controle de quais itens foram enviados deverá ser realizado pela sua Aplicação.&lt;br/&gt;&lt;br/&gt;Para notificar a entrega de todos os produtos, passe a lista contendo todos os itens e quantidade total.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_tracking_delivered_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param body 
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order_tracking_delivered(body, order_id, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling post_order_tracking_delivered" if body.nil?
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling post_order_tracking_delivered" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/trackings/delivered".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para confirmar a troca de um item de um pedido
	    # &lt;p&gt;Operação utilizada para confirmar a troca de um item de pedido aberto pelo cliente (via protocolo).&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Quebra de envio&lt;/strong&gt;&lt;br/&gt;No caso de quebra de envio, passe apenas os itens e a quantidade que serão enviados.&lt;br/&gt;O controle de quais itens foram enviados deverá ser realizado pela sua Aplicação.&lt;br/&gt;&lt;br/&gt;Para notificar o envio de todos os produtos, passe a lista contendo todos os itens e quantidade total.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_tracking_sent_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param body 
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order_tracking_exchange(body, order_id, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling post_order_tracking_exchange" if body.nil?
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling post_order_tracking_exchange" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/trackings/exchange".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para confirmar devolução (reembolso) de item do pedido
	    # &lt;p&gt;Operação utilizada para confirmação de devolução (reembolso) de item do pedido através de protocolo aberto pelo cliente.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Quebra de envio&lt;/strong&gt;&lt;br/&gt;No caso de quebra de envio, passe apenas os itens e a quantidade que serão enviados.&lt;br/&gt;O controle de quais itens foram enviados deverá ser realizado pela sua Aplicação.&lt;br/&gt;&lt;br/&gt;Para notificar o envio de todos os produtos, passe a lista contendo todos os itens e quantidade total.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_tracking_sent_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param body 
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order_tracking_return(body, order_id, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling post_order_tracking_return" if body.nil?
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling post_order_tracking_return" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/trackings/return".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Registra uma nova operação de tracking de envio
	    # &lt;p&gt;Registra uma nova operação de tracking de Envio para os itens do pedido.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Quebra de envio&lt;/strong&gt;&lt;br/&gt;No caso de quebra de envio, passe apenas os itens e a quantidade que serão enviados.&lt;br/&gt;O controle de quais itens foram enviados deverá ser realizado pela sua Aplicação.&lt;br/&gt;&lt;br/&gt;Para notificar o envio de todos os produtos, passe a lista contendo todos os itens e quantidade total.&lt;br/&gt;&lt;br/&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_tracking_sent_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por esse serviço.&lt;/p&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para método POST, sendo retornado apenas o Status HTTP 201 - Created.&lt;/strong&gt;&lt;/p&gt;
	    # @param body 
	    # @param order_id ID do pedido.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_order_tracking_sent(body, order_id, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling post_order_tracking_sent" if body.nil?
	      
	      # verify the required parameter 'order_id' is set
	      raise "Missing the required parameter 'order_id' when calling post_order_tracking_sent" if order_id.nil?
	      
	
	      # resource path
	      path = "/orders/{orderId}/trackings/sent".sub('{format}','json').sub('{' + 'orderId' + '}', order_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
