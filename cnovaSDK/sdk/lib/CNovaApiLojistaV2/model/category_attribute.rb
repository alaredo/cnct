module CNovaApiLojistaV2
  module Model
	  # 
	  class CategoryAttribute < BaseObject
	    attr_accessor :name, :values, :is_variant
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Nome do atributo
	        :'name' => :'name',
	        
	        # Lista de domínios para atributos variantes
	        :'values' => :'values',
	        
	        # Identifica se atributo pode sofrer variações
	        :'is_variant' => :'isVariant'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'name' => :'string',
	        :'values' => :'array[string]',
	        :'is_variant' => :'boolean'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'values']
	        if (value = attributes[:'values']).is_a?(Array)
	          @values = value
	        end
	      end
	      
	      if attributes[:'isVariant']
	        @is_variant = attributes[:'isVariant']
	      end
	      
	    end
	  end
	
	
  end
end
