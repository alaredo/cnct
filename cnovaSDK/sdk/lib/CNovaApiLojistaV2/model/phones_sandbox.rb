module CNovaApiLojistaV2
  module Model
	  # 
	  class PhonesSandbox < BaseObject
	    attr_accessor :mobile, :home, :office
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Telefone celular do cliente
	        :'mobile' => :'mobile',
	        
	        # Telefone residencial do cliente
	        :'home' => :'home',
	        
	        # Telefone de trabalho do cliente
	        :'office' => :'office'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'mobile' => :'string',
	        :'home' => :'string',
	        :'office' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'mobile']
	        @mobile = attributes[:'mobile']
	      end
	      
	      if attributes[:'home']
	        @home = attributes[:'home']
	      end
	      
	      if attributes[:'office']
	        @office = attributes[:'office']
	      end
	      
	    end
	  end
	
	
  end
end
