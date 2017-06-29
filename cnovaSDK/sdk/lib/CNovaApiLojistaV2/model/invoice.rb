module CNovaApiLojistaV2
  module Model
	  # 
	  class Invoice < BaseObject
	    attr_accessor :cnpj, :number, :serie, :issued_at, :access_key, :link_xml, :link_danfe
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # CNPJ responsável pelo envio dos produtos. Pode ser diferente caso a empresa possua diversos Centros de Distribuição (CDs)
	        :'cnpj' => :'cnpj',
	        
	        # Número da Nota Fiscal
	        :'number' => :'number',
	        
	        # Número de serie da Nota Fiscal
	        :'serie' => :'serie',
	        
	        # Data de emissão da Nota Fiscal
	        :'issued_at' => :'issuedAt',
	        
	        # Número da chave de acesso à nota fiscal. A chave possui 44 dígitos e contém todas as informações da DANFE
	        :'access_key' => :'accessKey',
	        
	        # Url para consulta da NFE
	        :'link_xml' => :'linkXml',
	        
	        # Url para consulta da DANFE
	        :'link_danfe' => :'linkDanfe'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'cnpj' => :'string',
	        :'number' => :'string',
	        :'serie' => :'string',
	        :'issued_at' => :'DateTime',
	        :'access_key' => :'string',
	        :'link_xml' => :'string',
	        :'link_danfe' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'cnpj']
	        @cnpj = attributes[:'cnpj']
	      end
	      
	      if attributes[:'number']
	        @number = attributes[:'number']
	      end
	      
	      if attributes[:'serie']
	        @serie = attributes[:'serie']
	      end
	      
	      if attributes[:'issuedAt']
	        @issued_at = attributes[:'issuedAt']
	      end
	      
	      if attributes[:'accessKey']
	        @access_key = attributes[:'accessKey']
	      end
	      
	      if attributes[:'linkXml']
	        @link_xml = attributes[:'linkXml']
	      end
	      
	      if attributes[:'linkDanfe']
	        @link_danfe = attributes[:'linkDanfe']
	      end
	      
	    end
	  end
	
	
  end
end
