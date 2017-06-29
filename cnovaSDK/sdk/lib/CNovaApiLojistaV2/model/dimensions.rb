module CNovaApiLojistaV2
  module Model
	  # 
	  class Dimensions < BaseObject
	    attr_accessor :weight, :length, :width, :height
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Peso do produto, em quilos. Não pode ser 0 (zero) e deve ter no máximo duas casas decimais
	        :'weight' => :'weight',
	        
	        # Comprimento do produto, em metros. Não pode ser 0 (zero) e deve ter no máximo duas casas decimais
	        :'length' => :'length',
	        
	        # Largura do produto, em metros. Não pode ser 0 (zero) e deve ter no máximo duas casas decimais
	        :'width' => :'width',
	        
	        # Altura do produto, em metros. Não pode ser 0 (zero) e deve ter no máximo duas casas decimais
	        :'height' => :'height'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'weight' => :'double',
	        :'length' => :'double',
	        :'width' => :'double',
	        :'height' => :'double'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'weight']
	        @weight = attributes[:'weight']
	      end
	      
	      if attributes[:'length']
	        @length = attributes[:'length']
	      end
	      
	      if attributes[:'width']
	        @width = attributes[:'width']
	      end
	      
	      if attributes[:'height']
	        @height = attributes[:'height']
	      end
	      
	    end
	  end
	
	
  end
end
