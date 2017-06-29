require "uri"

module CNovaApiLojistaV2
  module Api
	
	  class TicketsApi
	    basePath = "https://desenvolvedores.cnova.com/api-portal/proxy/"
	    # apiInvoker = APIInvoker
	
	
	    # Operação utilizada para consultar os protocolos
	    # &lt;p&gt;Esse serviço permite que as plataformas consigam integrar suas ferramentas de atendimento com o processo de atendimento/pós vendas do Marketplace. Um Ticket representa um atendimento feito ao consumidor final. São diversas possibilidades de atendimento ao consumidor, o consumidor pode iniciar o atendimento através dá página de contato do site do &lt;a href=http://atendimento.extra.com.br/viewclient/faces/pages/contact.xhtml&gt;&lt;strong&gt;Extra&lt;/strong&gt;&lt;/a&gt; .&lt;/p&gt;
	    # @param _offset Parâmetro utilizado para indicar a posição inicial de consulta. 
	    # @param _limit Parâmetro utilizado para limitar a quantidade de registros trazidos pela consulta. 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :status Utilizado para filtrar os tickets com um status específico. Aberto (opened), Em Monitoramento (attendance), Fechado (closed).
	    # @option opts [string] :code Código do protocolo.
	    # @option opts [string] :customer_name Nome do comprador (ou parte dele).
	    # @option opts [string] :created_at Utilizado para filtrar tickets pela data de criação. É possível passar uma variação de datas separadas por &#39;,&#39;. Ex: 2014-12-15T11:00:00.000-02:00,*.
	    # @option opts [string] :closed_at Utilizado para filtrar tickets pela data de fechamento. É possível passar uma variação de datas separada &#39;,&#39;. Ex: 2014-12-15T11:00:00.000-02:00,2014-12-15T23:00:00.00-02:00. É possível também utilizar o caractere &#39;*&#39; para não limitar alguma posição. Ex: 2014-12-14T00:00.000-02:00,*.
	    # @return [Tickets]
	    def self.get_tickets(_offset, _limit, opts = {})
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_tickets" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_tickets" if _limit.nil?
	      
	
	      # resource path
	      path = "/tickets".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	      query_params[:'status'] = opts[:'status'] if opts[:'status']
	      query_params[:'code'] = opts[:'code'] if opts[:'code']
	      query_params[:'customerName'] = opts[:'customer_name'] if opts[:'customer_name']
	      query_params[:'createdAt'] = opts[:'created_at'] if opts[:'created_at']
	      query_params[:'closedAt'] = opts[:'closed_at'] if opts[:'closed_at']
	
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
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::Tickets.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Cria um novo protocolo
	    # &lt;p&gt;Esse serviço irá efetuar a criação de um novo Ticket. Serve para atender as necessidades do lojista entrar em contato com o consumidor final caso necessário.&lt;/p&gt;&lt;p class=&#39;obs obs-danger&#39;&gt;Todo contato com o comprador, com exceção dos os emails transacionais que já são enviados pelo Marketplace, deve ser realizado através desta API.&lt;/p&gt;
	    # @param new_ticket Objeto Novo Ticket..
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_ticket(new_ticket, opts = {})
	      
	      # verify the required parameter 'new_ticket' is set
	      raise "Missing the required parameter 'new_ticket' when calling post_ticket" if new_ticket.nil?
	      
	
	      # resource path
	      path = "/tickets".sub('{format}','json')
	
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
	      post_body = Client::Request.object_to_http_body(new_ticket)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para atualizar o responsável pelo atendimento do protocolo
	    # &lt;p&gt;Esse serviço permitirá atualizar o responsável pelo atendimento de um Ticket, onde as possibilidades são: Marketplace ou Lojista.&lt;/p&gt;
	    # @param code Código do protocolo.
	    # @param body Mensagem a ser enviada como descrição da operação.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_ticket_assignee(code, body, opts = {})
	      
	      # verify the required parameter 'code' is set
	      raise "Missing the required parameter 'code' when calling put_ticket_assignee" if code.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_ticket_assignee" if body.nil?
	      
	
	      # resource path
	      path = "/tickets/{code}/assignee".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)
	
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
	
	
	    # Operação utilizada para consultar um protocolo
	    # &lt;p&gt;Esse serviço apresenta todo o histórico de mensagens trocadas no Ticket para efetuar o atendimento. Para efetuar uma requisição é necessário passar o code do Ticket desejado no path do serviço.&lt;/p&gt; &lt;p class=&#39;obs&#39;&gt;Só serão exibidos os protocolos que sejam de propriedade do lojista/parceiro que está efetuando a consulta.&lt;/p&gt;
	    # @param code Identificador do  protocolo.
	    # @param _offset Parâmetro utilizado para indicar a posição do registro inicial que será trazido. A primeira posição é sempre zero (0).
	    # @param _limit Parâmetro utilizado para indicar a quantidade de registros que deve ser trazido na consulta.
	    # @param [Hash] opts the optional parameters
	    # @return [GetTicketMessagesResponse]
	    def self.get_ticket_messages_by_code(code, _offset, _limit, opts = {})
	      
	      # verify the required parameter 'code' is set
	      raise "Missing the required parameter 'code' when calling get_ticket_messages_by_code" if code.nil?
	      
	      # verify the required parameter '_offset' is set
	      raise "Missing the required parameter '_offset' when calling get_ticket_messages_by_code" if _offset.nil?
	      
	      # verify the required parameter '_limit' is set
	      raise "Missing the required parameter '_limit' when calling get_ticket_messages_by_code" if _limit.nil?
	      
	
	      # resource path
	      path = "/tickets/{code}/messages".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'_offset'] = _offset
	      query_params[:'_limit'] = _limit
	
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
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::GetTicketMessagesResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para criar uma mensagem no protocolo
	    # &lt;p&gt;Esse serviço irá criar uma mensagem atrelada ao Ticket em questão. Essa mensagem pode ou não ficar visível para o consumidor final. As mensagens enviadas ficam disponíveis no serviço de Consulta de Mensagens de Ticket.&lt;/p&gt;
	    # @param code Identificador do  protocolo.
	    # @param ticket Objeto Ticket.
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.post_ticket_message(code, ticket, opts = {})
	      
	      # verify the required parameter 'code' is set
	      raise "Missing the required parameter 'code' when calling post_ticket_message" if code.nil?
	      
	      # verify the required parameter 'ticket' is set
	      raise "Missing the required parameter 'ticket' when calling post_ticket_message" if ticket.nil?
	      
	
	      # resource path
	      path = "/tickets/{code}/messages".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)
	
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
	      post_body = Client::Request.object_to_http_body(ticket)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::string.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Operação utilizada para atualizar o status dos tickets
	    # &lt;p&gt;Esse serviço permitirá que o lojista/plataforma altere o status de um Ticket. Os status permitidos serão: Fechado &lt;strong&gt; (closed) &lt;/strong&gt; e Em Acompanhamento &lt;strong&gt; (attendance).&lt;/strong&gt;&lt;/p&gt;
	    # @param code Código do protocólo.
	    # @param body Parâmetros para ativação/desativação massiva de produtos
	    # @param [Hash] opts the optional parameters
	    # @return [string]
	    def self.put_ticket_status(code, body, opts = {})
	      
	      # verify the required parameter 'code' is set
	      raise "Missing the required parameter 'code' when calling put_ticket_status" if code.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling put_ticket_status" if body.nil?
	      
	
	      # resource path
	      path = "/tickets/{code}/status".sub('{format}','json').sub('{' + 'code' + '}', code.to_s)
	
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
