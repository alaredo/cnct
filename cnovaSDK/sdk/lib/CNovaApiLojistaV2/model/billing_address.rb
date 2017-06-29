module CNovaApiLojistaV2
  module Model
	  # 
	  class BillingAddress < BaseObject
	    attr_accessor :address, :number, :complement, :quarter, :reference, :city, :state, :country_id, :zip_code
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Endereço (nome da rua, avenida ... )
	        :'address' => :'address',
	        
	        # Número do endereço
	        :'number' => :'number',
	        
	        # Informações adicionais
	        :'complement' => :'complement',
	        
	        # Bairro
	        :'quarter' => :'quarter',
	        
	        # Pontos de referência
	        :'reference' => :'reference',
	        
	        # Cidade
	        :'city' => :'city',
	        
	        # Estado
	        :'state' => :'state',
	        
	        # Identificação do País. Baseado na ISO-3166, padrão alpha 2. Ex.: BR, US, AR
	        :'country_id' => :'countryId',
	        
	        # Código de Endereçamento Postal - CEP
	        :'zip_code' => :'zipCode'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'address' => :'string',
	        :'number' => :'string',
	        :'complement' => :'string',
	        :'quarter' => :'string',
	        :'reference' => :'string',
	        :'city' => :'string',
	        :'state' => :'string',
	        :'country_id' => :'string',
	        :'zip_code' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'address']
	        @address = attributes[:'address']
	      end
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'complement']
	        @complement = attributes[:'complement']
	      end
	      
	      if attributes[:'quarter']
	        @quarter = attributes[:'quarter']
	      end
	      
	      if attributes[:'reference']
	        @reference = attributes[:'reference']
	      end
	      
	      if attributes[:'city']
	        @city = attributes[:'city']
	      end
	      
	      if attributes[:'state']
	        @state = attributes[:'state']
	      end
	      
	      if attributes[:'countryId']
	        @country_id = attributes[:'countryId']
	      end
	      
	      if attributes[:'zipCode']
	        @zip_code = attributes[:'zipCode']
	      end
	      
	    end
	  end
	
	
  end
end
