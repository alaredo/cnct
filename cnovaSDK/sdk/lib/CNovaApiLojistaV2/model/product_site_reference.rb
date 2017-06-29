module CNovaApiLojistaV2
  module Model
	  # 
	  class ProductSiteReference < BaseObject
	    attr_accessor :id, :href, :site
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID do produto
	        :'id' => :'id',
	        
	        # Link do produto no site
	        :'href' => :'href',
	        
	        # Site no qual o produto está disponível. Os possíveis sites são: &#39;EX&#39;, &#39;PF&#39;, &#39;CB&#39;, &#39;EH&#39;, &#39;BT&#39;, &#39;CD&#39;. Consulte a lista completa de sites disponíveis no serviço &lt;a href=&#39;#!/sites&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /sites&lt;/strong&gt;&lt;/a&gt;
	        :'site' => :'site'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'string',
	        :'href' => :'string',
	        :'site' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'id']
	        @id = attributes[:'id']
	      end
	      
	      if attributes[:'href']
	        @href = attributes[:'href']
	      end
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	    end
	  end
	
	
  end
end
