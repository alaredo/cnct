module CNovaApiLojistaV2
  module Model
	  # 
	  class Prices < BaseObject
	    attr_accessor :default, :offer, :site
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Preço de do produto no Marketplace
	        :'default' => :'default',
	        
	        # Preço real de venda. Preço por do produto no Marketplace
	        :'offer' => :'offer',
	        
	        # Site no qual o preço será aplicado. Os possíveis sites são: &#39;EX&#39;, &#39;PF&#39;, &#39;CB&#39;, &#39;EH&#39;, &#39;BT&#39;, &#39;CD&#39;. Caso nenhum valor seja informado, será assumido o valor &#39;EX&#39; como padrão. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	        :'site' => :'site'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'default' => :'double',
	        :'offer' => :'double',
	        :'site' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'default']
	        @default = attributes[:'default']
	      end
	      
	      if attributes[:'offer']
	        @offer = attributes[:'offer']
	      end
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	    end
	  end
	
	
  end
end
