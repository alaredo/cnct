module CNovaApiLojistaV2
  module Model
	  # 
	  class Stock < BaseObject
	    attr_accessor :quantity, :cross_docking_time, :warehouse
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Quantidade de produtos disponíveis
	        :'quantity' => :'quantity',
	        
	        # Tempo de preparação/fabricação do produto em dias. Esse tempo é incluído no cálculo de frete
	        :'cross_docking_time' => :'crossDockingTime',
	        
	        # ID do depósito no qual o estoque do produto está sendo considerado. Consulte a lista completa de warehouses disponíveis no serviço &lt;a href=&#39;#!/warehouses&#39; target=&#39;_blank&#39;&gt;&lt;strong&gt;GET /warehouses&lt;/strong&gt;&lt;/a&gt;
	        :'warehouse' => :'warehouse'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'quantity' => :'int',
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
