module CNovaApiLojistaV2
  module Model
	  # 
	  class SellerItemStatus < BaseObject
	    attr_accessor :active, :site
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Indica se o produto está ativo &#39;TRUE&#39; (à venda no MP) ou não &#39;FALSE&#39;
	        :'active' => :'active',
	        
	        # Site para o qual o status é considerado. Os possíveis sites são: &#39;EX&#39;,&#39;PF&#39;,&#39;CB&#39;, &#39;EH&#39;, &#39;BT&#39;, &#39;CD&#39;.
	        :'site' => :'site'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'active' => :'boolean',
	        :'site' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'active']
	        @active = attributes[:'active']
	      end
	      
	      if attributes[:'site']
	        @site = attributes[:'site']
	      end
	      
	    end
	  end
	
	
  end
end
