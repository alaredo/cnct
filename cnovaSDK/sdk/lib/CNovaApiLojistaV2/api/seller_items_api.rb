require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class SellerItemsApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Recupera todos os produtos que estão associados ao Lojista
	    # Recupera todos os produtos que estão associados ao Lojista, mesmo os que não estão disponíveis para venda.
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :site Site do qual deseja consultar o produto. Se o parâmetro não for informado, serão trazidos apenas produtos do Extra. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	    # @return [GetSellerItemsResponse]
	    def self.get_seller_items(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_seller_items" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_seller_items" if _limit.nil?
	      
	
	      # resource path
	      path = "/sellerItems".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'site'] = opts[:'site'] if opts[:'site']
	
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
	     	obj = Model::GetSellerItemsResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera produtos do Lojista que estão disponíveis para venda
	    # Recupera apenas os produtos do Lojista que estão disponíveis para venda, ou seja, que possuem estoque e preço atualizados e imagem(ns) válida(s).
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :site Site do qual deseja consultar os produtos. Se o parâmetro não for informado, serão trazidos apenas produtos do Extra. Os possíveis sites são: &#39;EX&#39;, &#39;PF&#39;, &#39;CB&#39;, &#39;EH&#39;, &#39;BT&#39;, &#39;CD&#39;. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	    # @return [GetSellerItemsResponse]
	    def self.get_seller_items_by_status_active(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_seller_items_by_status_active" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_seller_items_by_status_active" if _limit.nil?
	      
	
	      # resource path
	      path = "/sellerItems/status/selling".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'site'] = opts[:'site'] if opts[:'site']
	
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
	     	obj = Model::GetSellerItemsResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera detalhes do item do Lojista através do skuSellerId (sku do produto do Lojista) informado
	    # Recupera detalhes do item do Lojista através do skuSellerId (sku do produto do Lojista) informado.
	    # @param sku_seller_id SKU ID do Lojista.
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :site Site do qual deseja consultar o produto. Se o parâmetro não for informado, serão trazidos apenas produtos do Extra. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	    # @return [SellerItem]
	    def self.get_seller_item_by_sku_seller_id(sku_seller_id, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling get_seller_item_by_sku_seller_id" if sku_seller_id.nil?
	      
	
	      # resource path
	      path = "/sellerItems/{skuSellerId}".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'site'] = opts[:'site'] if opts[:'site']
	
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
	     	obj = Model::SellerItem.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Atualização de preço do item do Lojista
	    # &lt;p&gt;Atualiza o preço &#39;de&#39; e o preço &#39;por&#39; (preço real para venda) do item do Lojista informado.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;&lt;strong&gt;Atenção:&lt;/strong&gt; &lt;br/&gt;Para proteção do lojista, existe uma regra de validação de preços que impede alterações muito grandes em uma única operação. Não é permitido a alteração com valores 50% menores que o valor atual. &lt;br/&gt;Para este tipo de crítica será retornado um Status HTTP &lt;a href=&#39;../apis/index.html#error_codes&#39;&gt;&lt;strong&gt;422&lt;/strong&gt;&lt;/a&gt;, seguido da mensagem: &lt;strong&gt;Alteração não permitida, variação de preço muito grande.&lt;/strong&gt;&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU ID do Lojista.
	    # @param body Parâmetros para atualização de preço do SKU
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_item_prices(sku_seller_id, body, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling put_seller_item_prices" if sku_seller_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_item_prices" if body.nil?
	      
	
	      # resource path
	      path = "/sellerItems/{skuSellerId}/prices".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
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
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Ativação/Desativação de produto no Marketplace
	    # Atualiza o status do produto no Marketplace. Se setado para false, o produto é desativado e deixa de ser vendido no Marketplace.&lt;p =&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU ID do Lojista.
	    # @param body Parâmetros para ativação/desativação do SKU.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_item_status(sku_seller_id, body, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling put_seller_item_status" if sku_seller_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_item_status" if body.nil?
	      
	
	      # resource path
	      path = "/sellerItems/{skuSellerId}/status".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json; charset=utf-8']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
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
	
	
	    # Atualização de estoque do item do Lojista
	    # &lt;p&gt;Atualiza a quantidade disponível para venda do Item do Lojista informado.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;Se atualizado para zero, o item não estará mais disponível para venda.&lt;/p&gt;&lt;p class=&#39;obs&#39;&gt;&lt;strong&gt;Retorno do Serviço&lt;/strong&gt;&lt;br/&gt;O retorno deste serviço é baseado no padrão definido para métodos PUT e DELETE, sendo retornado apenas o Status HTTP 204 - No Content.&lt;/strong&gt;&lt;/p&gt;
	    # @param sku_seller_id SKU ID do Lojista.
	    # @param body Parâmetros para atualização de estoque do SKU
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_seller_item_stock(sku_seller_id, body, opts = {})
	      
	      # verify the required parameter 'sku_seller_id' is set
	      raise "Missing the required parameter 'sku_seller_id' when calling put_seller_item_stock" if sku_seller_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_seller_item_stock" if body.nil?
	      
	
	      # resource path
	      path = "/sellerItems/{skuSellerId}/stock".sub('{format}','json').sub('{' + 'skuSellerId' + '}', sku_seller_id.to_s)
	
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
