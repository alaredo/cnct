module CNovaApiLojistaV2
  module Model
	  # 
	  class Site < BaseObject
	    attr_accessor :id, :name, :mnemonic, :url
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do site
	        :'id' => :'id',
	        
	        # Nome do site
	        :'name' => :'name',
	        
	        # Código que deverá ser utilizado nas operações que exigem o site. Exemplo: &lt;code&gt;GET /sellerItems?_offset=0&amp;_limit=10&amp;site=EX&lt;/code&gt; para trazer produtos vendidos apenas no Extra
	        :'mnemonic' => :'mnemonic',
	        
	        # URL base para consultar produtos nesse site
	        :'url' => :'url'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'int',
	        :'name' => :'string',
	        :'mnemonic' => :'string',
	        :'url' => :'string'
	        
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
	      
	      if attributes[:'mnemonic']
	        @mnemonic = attributes[:'mnemonic']
	      end
	      
	      if attributes[:'url']
	        @url = attributes[:'url']
	      end
	      
	    end
	  end
	
	
  end
end
