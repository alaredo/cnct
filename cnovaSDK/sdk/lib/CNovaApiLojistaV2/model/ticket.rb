module CNovaApiLojistaV2
  module Model
	  # 
	  class Ticket < BaseObject
	    attr_accessor :code, :status, :description, :created_at, :updated_at, :closed_at, :priority, :assignee, :ombudsman, :customer, :site, :channel, :type, :subject, :sla, :metadata
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do ticket
	        :'code' => :'code',
	        
	        # Status do ticket que são classificados como: &lt;strong&gt;&#39;opened&#39;, &#39;closed&#39; e &#39;attendance&#39;.&lt;/strong&gt;
	        :'status' => :'status',
	        
	        # Descrição do ticket
	        :'description' => :'description',
	        
	        # Data da criação do ticket
	        :'created_at' => :'createdAt',
	        
	        # Atualização do ticket
	        :'updated_at' => :'updatedAt',
	        
	        # Data de encerramento do ticket
	        :'closed_at' => :'closedAt',
	        
	        # Prioridade do ticket possui os seguintes valores: &lt;strong&gt;&#39;Normal&#39; e &#39;Em Acompanhamento&#39;&lt;/strong&gt;
	        :'priority' => :'priority',
	        
	        # Responsável pelo atendimento do protocolo.
	        :'assignee' => :'assignee',
	        
	        # Informações de ouvidoria
	        :'ombudsman' => :'ombudsman',
	        
	        # Cliente associado ao ticket
	        :'customer' => :'customer',
	        
	        # Site de origem do protocolo. Os valores disponíveis no site são: &lt;strong&gt; CD, BT, EH, EX, PF, e CB &lt;/strong&gt;
	        :'site' => :'site',
	        
	        # O canal de atendimento de origem do protocolo, possui os seguintes valores: &lt;strong&gt; Fale Conosco, Admin Seller, CallCenter, Email, e External Service&lt;/strong&gt;
	        :'channel' => :'channel',
	        
	        # Tipo do ticket.
	        :'type' => :'type',
	        
	        # Assunto relacionado ao ticket.
	        :'subject' => :'subject',
	        
	        # Informações sobre o prazo de atendimento do ticket.
	        :'sla' => :'sla',
	        
	        # Leia mais sobre os metadados retornados nas listagens em &lt;a href=&#39;../apis/index.html#search&#39;&gt;Metadada&lt;/a&gt;
	        :'metadata' => :'metadata'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'code' => :'string',
	        :'status' => :'string',
	        :'description' => :'string',
	        :'created_at' => :'DateTime',
	        :'updated_at' => :'DateTime',
	        :'closed_at' => :'DateTime',
	        :'priority' => :'string',
	        :'assignee' => :'TicketAssignedUser',
	        :'ombudsman' => :'Ombudsman',
	        :'customer' => :'CustomerReference',
	        :'site' => :'string',
	        :'channel' => :'string',
	        :'type' => :'TicketType',
	        :'subject' => :'TicketSubject',
	        :'sla' => :'TicketSla',
	        :'metadata' => :'array[MetadataEntry]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'code']
	        @code = attributes[:'code']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'description']
	        @description = attributes[:'description']
	      end
	      
	      if attributes[:'createdAt']
	        @created_at = attributes[:'createdAt']
	      end
	      
	      if attributes[:'updatedAt']
	        @updated_at = attributes[:'updatedAt']
	      end
	      
	      if attributes[:'closedAt']
	        @closed_at = attributes[:'closedAt']
	      end
	      
	      if attributes[:'priority']
	        @priority = attributes[:'priority']
	      end
	      
	      if attributes[:'assignee']
	        @assignee = attributes[:'assignee']
	      end
	      
	      if attributes[:'ombudsman']
	        @ombudsman = attributes[:'ombudsman']
	      end
	      
	      if attributes[:'customer']
	        @customer = attributes[:'customer']
	      end
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	      if attributes[:'channel']
	        @channel = attributes[:'channel']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'subject']
	        @subject = attributes[:'subject']
	      end
	      
	      if attributes[:'sla']
	        @sla = attributes[:'sla']
	      end
	      
	      if attributes[:'metadata']
	        if (value = attributes[:'metadata']).is_a?(Array)
	          @metadata = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
