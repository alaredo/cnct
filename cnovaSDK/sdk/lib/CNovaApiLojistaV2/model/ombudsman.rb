module CNovaApiLojistaV2
  module Model
	  # 
	  class Ombudsman < BaseObject
	    attr_accessor :active, :source, :created_at
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Quando for &#39;true&#39; se o protocolo estiver na Ouvidoria, e &#39;false&#39; se não estiver
	        :'active' => :'active',
	        
	        # Quando um protocolo está como ouvidoria com valor &#39;true&#39; os possíveis valores são: Facebook / Procon / Reclameaqui / Twitter / Outros.
	        :'source' => :'source',
	        
	        # Data de entrada na Ouvidoria
	        :'created_at' => :'createdAt'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'active' => :'boolean',
	        :'source' => :'string',
	        :'created_at' => :'DateTime'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'active']
	        @active = attributes[:'active']
	      end
	      
	      if attributes[:'source']
	        @source = attributes[:'source']
	      end
	      
	      if attributes[:'createdAt']
	        @created_at = attributes[:'createdAt']
	      end
	      
	    end
	  end
	
	
  end
end
