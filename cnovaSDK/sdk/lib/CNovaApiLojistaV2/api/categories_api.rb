require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class CategoriesApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Recupera uma lista de categorias
	    # &lt;p&gt;Recupera uma lista de categorias existentes no Marketplace.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Por padrão, o acesso a este serviço está bloqueado e só será liberado para quem irá realizar desduplicação de produtos.&lt;br/&gt;Para mais informações, entre com seu login e senha e abra um Chamado para nossa equipe de suporte.&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial da consulta. O registro inicial tem índice zero (0), ou seja, para trazer os 10 primeiros registros, informa 0 para _offset e 10 para _limit.
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetCategoriesResponse]
	    def self.get_categories(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_categories" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_categories" if _limit.nil?
	      
	
	      # resource path
	      path = "/categories".sub('{format}','json')
	
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
	     	obj = Model::GetCategoriesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Recupera detalhes de uma categoria informada
	    # &lt;p&gt;Recupera detalhes da categoria informada.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Por padrão, o acesso a este serviço está bloqueado e só será liberado para quem irá realizar desduplicação de produtos.&lt;br/&gt;Para mais informações, entre com seu login e senha e abra um Chamado para nossa equipe de suporte.&lt;/p&gt;
	    # @param level_id Id da categoria.
	    # @param [Hash] opts the optional parameters
	    # @return [Category]
	    def self.get_category_by_id(level_id, opts = {})
	      
	      # verify the required parameter 'level_id' is set
	      raise "Missing the required parameter 'level_id' when calling get_category_by_id" if level_id.nil?
	      
	
	      # resource path
	      path = "/categories/{levelId}".sub('{format}','json').sub('{' + 'levelId' + '}', level_id.to_s)
	
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
	     	obj = Model::Category.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
