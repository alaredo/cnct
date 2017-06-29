module CNovaApiLojistaV2
  module Model
	  # 
	  class CustomerSandbox < BaseObject
	    attr_accessor :name, :gender, :document_number, :type, :email, :born_at, :billing, :phones
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Nome do cliente
	        :'name' => :'name',
	        
	        # Sexo - Masculino ou Feminino
	        :'gender' => :'gender',
	        
	        # Número de documento do cliente
	        :'document_number' => :'documentNumber',
	        
	        # Tipo de cliente (Pessoa Física / Jurídica)
	        :'type' => :'type',
	        
	        # Email do cliente
	        :'email' => :'email',
	        
	        # Data de nascimento
	        :'born_at' => :'bornAt',
	        
	        # Endereço do cliente
	        :'billing' => :'billing',
	        
	        # Telefones do cliente
	        :'phones' => :'phones'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'name' => :'string',
	        :'gender' => :'string',
	        :'document_number' => :'string',
	        :'type' => :'string',
	        :'email' => :'string',
	        :'born_at' => :'DateTime',
	        :'billing' => :'BillingAddress',
	        :'phones' => :'PhonesSandbox'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'gender']
	        @gender = attributes[:'gender']
	      end
	      
	      if attributes[:'documentNumber']
	        @document_number = attributes[:'documentNumber']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'email']
	        @email = attributes[:'email']
	      end
	      
	      if attributes[:'bornAt']
	        @born_at = attributes[:'bornAt']
	      end
	      
	      if attributes[:'billing']
	        @billing = attributes[:'billing']
	      end
	      
	      if attributes[:'phones']
	        @phones = attributes[:'phones']
	      end
	      
	    end
	  end
	
	
  end
end
