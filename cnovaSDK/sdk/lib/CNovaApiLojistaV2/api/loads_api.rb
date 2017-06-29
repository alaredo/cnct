require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class LoadsApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Operação utilizada para consultar o status dos produtos enviados
	    # &lt;p&gt;Operação utilizada para consultar o status de uma lista de produtos enviados. É possível refinar a consulta utilizando alguns parâmetros não obrigatórios como: STATUS e DATA DE CADASTRO DO PRODUTO&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0)
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :created_at Data de envio do produto. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :status Status do produto importado.
	    # @return [GetOrdersTrackingUpdatingResponse]
	    def self.get_orders_tracking_delivered(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_tracking_delivered" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_tracking_delivered" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/orders/trackings/delivered".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'createdAt'] = opts[:'created_at'] if opts[:'created_at']
	      query_params[:'status'] = opts[:'status'] if opts[:'status']
	
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
	     	obj = Model::GetOrdersTrackingUpdatingResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada  para atualização de tracking massivo
	    # &lt;p&gt;Operação utilizada para atualização de tracking massivo. &lt;/p&gt;&lt;br/&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Devido ao formato JSON, é necessário alterar o &lt;strong&gt;HTTP Header: content-type&lt;/strong&gt; para &lt;strong&gt;application/json&lt;/strong&gt; para o correto funcionamento. &lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br /&gt;O retorno deste serviço é baseado no padrão definido para métodos POST segundo o Status HTTP 201 - Created.&lt;/p&gt;
	    # @param orders_trackings Arquivo em formato &lt;strong&gt;JSON&lt;/strong&gt; cujo conteúdo contêm uma lista de objetos product.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_orders_tracking_delivered(orders_trackings, opts = {})
	      
	      # verify the required parameter 'orders_trackings' is set
	      raise "Missing the required parameter 'orders_trackings' when calling post_orders_tracking_delivered" if orders_trackings.nil?
	      
	
	      # resource path
	      path = "/loads/orders/trackings/delivered".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(orders_trackings)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para consultar o status dos produtos enviados
	    # &lt;p&gt;Operação utilizada para consultar o status de uma lista de produtos enviados. É possível refinar a consulta utilizando alguns parâmetros não obrigatórios como: STATUS e DATA DE CADASTRO DO PRODUTO.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :created_at Data de envio do produto. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :status Status do produto importado.
	    # @return [GetOrdersTrackingUpdatingResponse]
	    def self.get_orders_tracking_sent(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_orders_tracking_sent" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_orders_tracking_sent" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/orders/trackings/sent".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'createdAt'] = opts[:'created_at'] if opts[:'created_at']
	      query_params[:'status'] = opts[:'status'] if opts[:'status']
	
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
	     	obj = Model::GetOrdersTrackingUpdatingResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para atualização de tracking massivo
	    # &lt;p&gt;Operação utilizada para atualização de tracking massivo. &lt;/p&gt;&lt;br/&gt;&lt;p class=&#39;obs obs-danger&#39;&gt; Devido ao formato JSON, é necessário alterar o &lt;strong&gt;HTTP Header: content-type&lt;/strong&gt; para &lt;strong&gt;application/json&lt;/strong&gt; para o correto funcionamento. &lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br /&gt;O retorno deste serviço é baseado no padrão definido para métodos POST segundo o Status HTTP 201 - Created.&lt;/p&gt;
	    # @param orders_trackings Arquivo em formato &lt;strong&gt;JSON&lt;/strong&gt; cujo conteúdo contêm uma lista de objetos de order tracking.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_orders_tracking_sent(orders_trackings, opts = {})
	      
	      # verify the required parameter 'orders_trackings' is set
	      raise "Missing the required parameter 'orders_trackings' when calling post_orders_tracking_sent" if orders_trackings.nil?
	      
	
	      # resource path
	      path = "/loads/orders/trackings/sent".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(orders_trackings)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para consultar o status dos produtos
	    # &lt;p&gt;Operação utilizada para consultar o status de uma lista de produtos enviados. É possível refinar a consulta utilizando alguns parâmetros não obrigatórios como: STATUS e DATA DE CADASTRO DO PRODUTO.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :created_at Data de envio do produto. Esse campo aceita um range de datas separados por vírgula, e os formatos aceitos para o campo são os seguintes:&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},{data final}&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt={data inicial},*&lt;/strong&gt;&lt;br/&gt;&lt;strong&gt;purchasedAt=*,{data final}&lt;/strong&gt;&lt;br/&gt;onde, o &lt;strong&gt;*&lt;/strong&gt; é obrigatório e indica a que todas as datas antes ou depois da outra data passada devem ser consideradas.
	    # @option opts [string] :status Status do produto importado.
	    # @return [GetProductsResponse]
	    def self.get_products(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_products" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_products" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/products".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'createdAt'] = opts[:'created_at'] if opts[:'created_at']
	      query_params[:'status'] = opts[:'status'] if opts[:'status']
	
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
	     	obj = Model::GetProductsResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para enviar uma nova carga de produtos (assíncrono)
	    # &lt;p class=&#39;obs obs-danger&#39;&gt;Não é possível executar testes com esta operação via API Browser devido ao envio de arquivos, não suportado pela ferramenta.&lt;/p&gt;&lt;p&gt;Operação utilizada para envio de carga contendo novos produtos. Através desta é possível passar, de forma não obrigatória, informações da ficha dos produtos e informações de venda, tais como valor e quantidade.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;Não é objetivo deste serviço o recebimento de informações para atualização de preço e estoque (para isso utilize os serviços existentes no recurso &lt;a href=&#39;#!/sellerItems&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;/sellerItems&lt;/strong&gt;&lt;/a&gt;), nem a atualização da ficha cadastral do produto (não há serviço disponível para essa finalidade, se precisar atualizar a ficha do produto, entre em contato com o time Comercial do Marketplace).&lt;br/&gt;&lt;br/&gt;&lt;strong&gt;IMPORTANTE&lt;/strong&gt;&lt;br/&gt;Caso sua Loja já tenha produtos no Marketplace que não foram enviados através da API (enviados via planilha excel, por exemplo), não os envie novamente em uma nova carga, faça primeiro a consulta de seus produtos através do serviço &lt;a href=&#39;#!/sellerItems/getSellerItems_get_0&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems&lt;/strong&gt;&lt;/a&gt; e realize o DE-PARA de skus.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt; Devido ao formato JSON, é necessário alterar o &lt;strong&gt;HTTP Header: content-type&lt;/strong&gt; para &lt;strong&gt;application/json&lt;/strong&gt; para o correto funcionamento.&lt;br /&gt; &lt;br /&gt;Clique &lt;a href=&#39;../tutoriais/exemplo_loads_v2.json&#39; target=&#39;_blank&#39;&gt;aqui&lt;/a&gt; para obter um exemplo de conteúdo JSON suportado por essa operação.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt; &lt;strong&gt;Categorias e atributos&lt;/strong&gt;&lt;br /&gt;&lt;br /&gt; &lt;strong&gt;SANDBOX&lt;/strong&gt;&lt;br /&gt;&lt;br/&gt;Para os testes na SANDBOX é obrigatório passar uma categoria fixa chamada &lt;strong&gt;&#39;Teste&gt;API&#39;&lt;/strong&gt;. Caso seja enviada qualquer outra categoria, o produto ficará no status &lt;strong&gt;Pending&lt;/strong&gt; e, em Sandbox, não há tratamento para esse tipo de status. Se isso acontecer, cancele o seu produto com a operação exlusiva de Sandbox &lt;a href=&#39;#!/loads/deleteProducts_delete_2&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;DELETE /loads/products/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt;&lt;br /&gt; &lt;strong&gt;PRODUÇÃO&lt;/strong&gt;&lt;br/&gt;&lt;br/&gt;Em produção, envie a categoria real do produto do lojista, não é necessário fazer o DE-PARA para a árvore de categorias do Marketplace.&lt;br /&gt; Lembre-se apenas de seguir a seguinte regra:&lt;br /&gt; &lt;strong&gt;&#39;Informática&gt;Notebook&#39;&lt;/strong&gt;, onde Informática é a categoria pai e Notebook é a subcategoria e elas devem ser separadas pelo sinal de maior &lt;strong&gt;&#39;&gt;&#39;&lt;/strong&gt;.&lt;br /&gt;Cada categoria da árvore de produtos da Cnova possui um conjunto de atributos opcionais e obrigatórios. Para saber quais são os atributos obrigatórios para a categoria de produtos que serão carregados, por favor consulte o seu contato comercial ou abra uma solicitação através de &lt;a href=&#39;http://suporte-lojistas.extra.com.br&#39;&gt;Suporte-lojistas.&lt;/a&gt; É sempre recomendável o envio do máximo de atributos disponíveis na base de origem para maximizar a qualidade das fichas de produto e os resultados de busca do produto.&lt;br/&gt; &lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt; &lt;strong&gt;Sobre o processo de importação&lt;/strong&gt; &lt;br /&gt;&lt;br/&gt;Esta operação é assíncrona, ou seja, os produtos passam por um processamento em nosso sistema para depois ficarem disponíveis para consulta. Para consultar o status dos produtos enviados, utilize o serviço:&lt;br/&gt;&lt;a href=&#39;#!/loads/getLoadInfo_get_1&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /loads/products&lt;/strong&gt;&lt;/a&gt;.&lt;br/&gt;Caso existam erros, também é possível verificar quais foram os erros para cada produto enviado através do serviço:&lt;br/&gt;&lt;a href=&#39;#!/loads/getLoadInfoSkuOrigin_get_3&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /loads/products/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;br /&gt; Todos os produtos passam por um processo de aprovação antes da efetiva liberação no Marketplace. Atente-se para o processo de importação de produtos, que é diferente para cada ambiente:&lt;br /&gt;&lt;br/&gt; &lt;strong&gt;SANDBOX&lt;/strong&gt;&lt;br /&gt;&lt;br/&gt; Em Sandbox o processo de aprovação é automático, ou seja, uma vez que as cargas forem enviadas, se os produtos estiverem com a ficha cadastral correta, todos eles serão aprovados (assumirão o status Disponível - AVAILABLE).&lt;br /&gt;Os produtos que forem aprovados automaticamente só estarão disponíveis na consulta de produtos do lojista (&lt;a href=&#39;#!/sellerItems/getSellerItems_get_0&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems&lt;/strong&gt;&lt;/a&gt;) após assumirem o status &lt;strong&gt;AVAILABLE.&lt;/strong&gt;&lt;br/&gt;&lt;br/&gt; &lt;strong&gt;PRODUÇÃO&lt;/strong&gt;&lt;br /&gt;&lt;br/&gt;Em Produção, antes que os produtos de uma carga sejam efetivamente cadastrados, eles passam por uma validação que fica sob a responsabilidade da Equipe de Cadastro do Marketplace e, por esse motivo, os produtos levam mais tempo para serem ativados no site ao qual você está apto a vender. Isso quer dizer que o produto não irá aparecer no site e nem estará disponível para atualizações de preço/estoque logo que enviado via carga. Consulte a equipe Comercial do Marketplace para informações sobre o prazo médio de cadastro dos produtos.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;&lt;strong&gt;Agrupamento de cargas&lt;/strong&gt;&lt;br/&gt;&lt;br/&gt;Quando uma carga de produtos é enviada, caso, antes da aprovação dos produtos enviado, uma segunda carga seja enviada, e se um produto for enviado nas duas cargas, o que irá valer é o segundo produto enviado, ou seja, se na primeira carga você constatou que o produto estava com algum erro, é possível reenviá-lo com as correções para que ele seja considerado para importação.&lt;br/&gt;Enquanto o novo produto não for aprovado, é possível enviá-lo novamente para atualização da fichal cadastral. &lt;strong&gt;Mas lembre-se:&lt;/strong&gt; para produtos já disponibilizados no Marketplace, esse serviço não realiza atualização da ficha cadastral, conforme mencionado acima.&lt;br/&gt;Outra forma de fazer essa correção unitária de um produto com problema é através do serviço &lt;a href=&#39;#!/loads/getLoadInfoSkuOrigin_put_4&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;PUT /loads/products/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br /&gt;O retorno deste serviço é baseado no padrão definido para métodos POST segundo o Status HTTP 201 - Created.&lt;/p&gt;
	    # @param products Arquivo em formato &lt;strong&gt;JSON&lt;/strong&gt; cujo conteúdo contêm uma lista de objetos product.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_products(products, opts = {})
	      
	      # verify the required parameter 'products' is set
	      raise "Missing the required parameter 'products' when calling post_products" if products.nil?
	      
	
	      # resource path
	      path = "/loads/products".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(products)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para consultar um produto enviado
	    # &lt;p&gt;Operação para consultar um produto enviado.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação deve ser utilizada, principalmente, para recuperar a listagem de erros que podem ter ocorrido na importação de produtos. Não utilize esse serviço para recuperar os dados atuais do produto que está sendo vendido (como preço e estoque). Para recuperar informações de venda do produto, utilize o serviço &lt;a href=&#39;#!/sellerItems/getDetailsSellerItemOrigin_get_1&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU ID do Lojista.
	    # @param [Hash] opts the optional parameters
	    # @return [GetProductWithErrorsResponse]
	    def self.get_product(sku_seller_id, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling get_product" if sku_seller_id.nil?
	      
	
	      # resource path
	      path = "/loads/products/{skuSellerId}".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
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
	     	obj = Model::GetProductWithErrorsResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para alterar um produto enviado na carga
	    # &lt;p&gt;Operação utilizada para alterar um produto enviado na carga.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;O produto só pode ser alterado antes de assumir o status Disponível (AVAILABLE).&lt;br/&gt;Produtos já disponíveis não podem ser alterados através de serviços. Para mais informações, leia a documentação &lt;a href=&#39;#!/loads/loadProducts_post_0&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;POST /loads/products&lt;/strong&gt;&lt;/a&gt;.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU do produto do lojista que deverá ser alterado.
	    # @param body Parâmetros para alterar um produto enviado na carga.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_product(sku_seller_id, body, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling put_product" if sku_seller_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_product" if body.nil?
	      
	
	      # resource path
	      path = "/loads/products/{skuSellerId}".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
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
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para cancelar uma lista de produtos enviados (SANDBOX)
	    # &lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação está disponível apenas para SANDBOX.&lt;/p&gt;&lt;p&gt;Operação utilizada para cancelar itens de uma carga. Os itens só podem ser cancelados se estiverem com erros de importação ou se os produtos estiverem pendentes (status=PENDING).&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU do produto do lojista que deverá ser alterado.
	    # @param [Hash] opts the optional parameters
	    # @return [Errors]
	    def self.delete_product(sku_seller_id, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling delete_product" if sku_seller_id.nil?
	      
	
	      # resource path
	      path = "/loads/products/{skuSellerId}".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:DELETE, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::Errors.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para consulta de atualização massiva de preços
	    # &lt;p&gt;Operação para consulta de status da atualização massiva de preços de produtos enviados.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação deve ser utilizada, principalmente, para recuperar a listagem de erros que podem ter ocorrido na importação de produtos. Não utilize esse serviço para recuperar os dados atuais do produto que está sendo vendido (como preço e estoque). Para recuperar informações de venda do produto, utilize o serviço &lt;a href=&#39;#!/sellerItems/getDetailsSellerItemOrigin_get_1&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetSellerItemsPricesUpdatingResponse]
	    def self.get_seller_items_prices_updating_status(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_seller_items_prices_updating_status" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_seller_items_prices_updating_status" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/prices".sub('{format}','json')
	
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
	     	obj = Model::GetSellerItemsPricesUpdatingResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para atualização de preço de produtos em massa
	    # &lt;p&gt;Operação utilizada para atualização de preço, de forma massiva, de produtos enviados na carga.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param body Parâmetros para ativação/desativação massiva de produtos
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_items_prices(body, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_items_prices" if body.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/prices".sub('{format}','json')
	
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
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para consulta da atualização massiva de status
	    # &lt;p&gt;Operação para consulta da atualização massiva de status de produtos enviado.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação deve ser utilizada, principalmente, para recuperar a listagem de erros que podem ter ocorrido na importação de produtos. Não utilize esse serviço para recuperar os dados atuais do produto que está sendo vendido (como preço e estoque). Para recuperar informações de venda do produto, utilize o serviço &lt;a href=&#39;#!/sellerItems/getDetailsSellerItemOrigin_get_1&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetSellerItemsStatusUpdatingResponse]
	    def self.get_seller_items_status_updating_status(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_seller_items_status_updating_status" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_seller_items_status_updating_status" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/status".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charfset=utf-8']
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
	     	obj = Model::GetSellerItemsStatusUpdatingResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para ativação/desativação massiva de produtos
	    # &lt;p&gt;Operação utilizada para ativação/desativação massiva de produtos enviados na carga.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param body Parâmetros para ativação/desativação massiva de produtos
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_items_status(body, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_items_status" if body.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/status".sub('{format}','json')
	
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
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para consulta do status da atualização massiva de estoque
	    # &lt;p&gt;Operação para consulta do status da atualização massiva de estoque de produtos enviados.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Essa operação deve ser utilizada, principalmente, para recuperar a listagem de erros que podem ter ocorrido na importação de produtos. Não utilize esse serviço para recuperar os dados atuais do produto que está sendo vendido (como preço e estoque). Para recuperar informações de venda do produto, utilize o serviço &lt;a href=&#39;#!/sellerItems/getDetailsSellerItemOrigin_get_1&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sellerItems/{skuSellerId}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetSellerItemsStocksUpdatingResponse]
	    def self.get_seller_items_stocks_updating_status(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_seller_items_stocks_updating_status" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_seller_items_stocks_updating_status" if _limit.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/stocks".sub('{format}','json')
	
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
	     	obj = Model::GetSellerItemsStocksUpdatingResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação para atualização de estoque de produtos em massa
	    # &lt;p&gt;Operação utilizada para atualização de estoque, de forma massiva, de produtos enviados na carga.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param body Parâmetros para atualização massiva de estoque de produtos.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_items_stocks(body, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_items_stocks" if body.nil?
	      
	
	      # resource path
	      path = "/loads/sellerItems/stocks".sub('{format}','json')
	
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
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
