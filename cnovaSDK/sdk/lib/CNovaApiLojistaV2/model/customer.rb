module CNovaApiLojistaV2
  module Model
	  # 
	  class Customer < BaseObject
	    attr_accessor :id, :name, :document_number, :type, :created_at, :email, :birth_date, :phones
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Identificador do cliente
	        :'id' => :'id',
	        
	        # Nome completo do cliente
	        :'name' => :'name',
	        
	        # Documento do cliente
	        :'document_number' => :'documentNumber',
	        
	        # Tipo de cliente: Pessoa Física ou Jurídica
	        :'type' => :'type',
	        
	        # Data de envio do produto
	        :'created_at' => :'createdAt',
	        
	        # Email do cliente
	        :'email' => :'email',
	        
	        # Data de nascimento do cliente
	        :'birth_date' => :'birthDate',
	        
	        # Lista de telefones do cliente
	        :'phones' => :'phones'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'name' => :'string',
	        :'document_number' => :'string',
	        :'type' => :'string',
	        :'created_at' => :'DateTime',
	        :'email' => :'string',
	        :'birth_date' => :'DateTime',
	        :'phones' => :'array[Phone]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'documentNumber']
	        @document_number = attributes[:'documentNumber']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'createdAt']
	        @created_at = attributes[:'createdAt']
	      end
	      
	      if attributes[:'email']
	        @email = attributes[:'email']
	      end
	      
	      if attributes[:'birthDate']
	        @birth_date = attributes[:'birthDate']
	      end
	      
	      if attributes[:'phones']
	        if (value = attributes[:'phones']).is_a?(Array)
	          @phones = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
