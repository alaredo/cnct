module CNovaApiLojistaV2
  module Model
	  # 
	  class MetadataEntry < BaseObject
	    attr_accessor :key, :value
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Chave de identificação do atributo
	        :'key' => :'key',
	        
	        # Valor do atributo
	        :'value' => :'value'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'key' => :'string',
	        :'value' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'key']
	        @key = attributes[:'key']
	      end
	      
	      if attributes[:'value']
	        @value = attributes[:'value']
	      end
	      
	    end
	  end
	
	
  end
end
