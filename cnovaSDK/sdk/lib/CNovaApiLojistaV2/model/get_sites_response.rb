module CNovaApiLojistaV2
  module Model
	  # 
	  class GetSitesResponse < BaseObject
	    attr_accessor :total_rows, :sites
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'total_rows' => :'totalRows',
	        
	        # 
	        :'sites' => :'sites'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'total_rows' => :'int',
	        :'sites' => :'array[Site]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'totalRows']
	        @total_rows = attributes[:'totalRows']
	      end
	      
	      if attributes[:'sites']
	        if (value = attributes[:'sites']).is_a?(Array)
	          @sites = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
