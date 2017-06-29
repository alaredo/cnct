module CNovaApiLojistaV2
  module Model
	  # 
	  class Category < BaseObject
	    attr_accessor :id, :name, :parent_id, :items, :attributes, :categories
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # ID da categoria
	        :'id' => :'id',
	        
	        # Nome da categoria
	        :'name' => :'name',
	        
	        # ID da categoria pai
	        :'parent_id' => :'parentId',
	        
	        # Quantidade de produtos existentes nessa categoria
	        :'items' => :'items',
	        
	        # Características do produto para a categoria
	        :'attributes' => :'attributes',
	        
	        # Lista de sub-categorias (filhas)
	        :'categories' => :'categories'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'id' => :'int',
	        :'name' => :'string',
	        :'parent_id' => :'int',
	        :'items' => :'int',
	        :'attributes' => :'array[CategoryAttribute]',
	        :'categories' => :'array[Category]'
	        
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
	      
	      if attributes[:'parentId']
	        @parent_id = attributes[:'parentId']
	      end
	      
	      if attributes[:'items']
	        @items = attributes[:'items']
	      end
	      
	      if attributes[:'attributes']
	        if (value = attributes[:'attributes']).is_a?(Array)
	          @attributes = value
	        end
	      end
	      
	      if attributes[:'categories']
	        if (value = attributes[:'categories']).is_a?(Array)
	          @categories = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
