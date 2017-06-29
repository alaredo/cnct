require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class WarehousesApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Recupera uma lista de armazéns habilitados para um lojista
	    # &lt;p&gt;Recupera uma lista de armazéns habilitados para um lojista.&lt;/p&gt;
	    # @param [Hash] opts the optional parameters
	    # @return [GetWarehousesResponse]
	    def self.get_warehouses(opts = {})
	      
	
	      # resource path
	      path = "/warehouses".sub('{format}','json')
	
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
	     	obj = Model::GetWarehousesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
