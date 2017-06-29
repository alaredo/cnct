module CNovaApiLojistaV2
  module Model
	  # 
	  class ControlledStock < BaseObject
	    attr_accessor :quantity, :reserved, :cross_docking_time, :warehouse
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Quantidade de produtos disponíveis
	        :'quantity' => :'quantity',
	        
	        # Quantidade de produtos que estão reservados (com compras ainda não confirmadas)
	        :'reserved' => :'reserved',
	        
	        # Tempo de preparação/fabricação do produto. Esse tempo é incluído no cálculo de frete
	        :'cross_docking_time' => :'crossDockingTime',
	        
	        # ID do depósito no qual o estoque do produto está sendo considerado. Consulte a lista completa de warehouses disponíveis no serviço &lt;a href=&#39;#!/warehouses&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /warehouses&lt;/strong&gt;&lt;/a&gt;
	        :'warehouse' => :'warehouse'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'quantity' => :'int',
	        :'reserved' => :'int',
	        :'cross_docking_time' => :'int',
	        :'warehouse' => :'int'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'quantity']
	        @quantity = attributes[:'quantity']
	      end
	      
	      if attributes[:'reserved']
	        @reserved = attributes[:'reserved']
	      end
	      
	      if attributes[:'crossDockingTime']
	        @cross_docking_time = attributes[:'crossDockingTime']
	      end
	      
	      if attributes[:'warehouse']
	        @warehouse = attributes[:'warehouse']
	      end
	      
	    end
	  end
	
	
  end
end
