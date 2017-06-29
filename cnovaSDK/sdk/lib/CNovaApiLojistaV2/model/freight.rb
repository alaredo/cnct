module CNovaApiLojistaV2
  module Model
	  # 
	  class Freight < BaseObject
	    attr_accessor :actual_amount, :charged_amount, :transit_time, :cross_docking_time, :additional_info, :type, :scheduled_at, :scheduled_period
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # Valor nominal do frete (sem descontos e abatimentos, com margem comercial)
	        :'actual_amount' => :'actualAmount',
	        
	        # Valor cobrado pelo frete
	        :'charged_amount' => :'chargedAmount',
	        
	        # Prazo de transporte para entrega do produto em dias úteis
	        :'transit_time' => :'transitTime',
	        
	        # Tempo de preparação/fabricação do produto em dias. Esse tempo é incluído no cálculo de frete.
	        :'cross_docking_time' => :'crossDockingTime',
	        
	        # Informações adicionais sobre a entrega. Pode ser utilizado para informar o nome da transportadora, por exemplo
	        :'additional_info' => :'additionalInfo',
	        
	        # Tipo de frete
	        :'type' => :'type',
	        
	        # Data de agendamento da entrega
	        :'scheduled_at' => :'scheduledAt',
	        
	        # Período que a entrega foi agendada
	        :'scheduled_period' => :'scheduledPeriod'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'actual_amount' => :'double',
	        :'charged_amount' => :'double',
	        :'transit_time' => :'int',
	        :'cross_docking_time' => :'int',
	        :'additional_info' => :'string',
	        :'type' => :'string',
	        :'scheduled_at' => :'DateTime',
	        :'scheduled_period' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'actualAmount']
	        @actual_amount = attributes[:'actualAmount']
	      end
	      
	      if attributes[:'chargedAmount']
	        @charged_amount = attributes[:'chargedAmount']
	      end
	      
	      if attributes[:'transitTime']
	        @transit_time = attributes[:'transitTime']
	      end
	      
	      if attributes[:'crossDockingTime']
	        @cross_docking_time = attributes[:'crossDockingTime']
	      end
	      
	      if attributes[:'additionalInfo']
	        @additional_info = attributes[:'additionalInfo']
	      end
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'scheduledAt']
	        @scheduled_at = attributes[:'scheduledAt']
	      end
	      
	      if attributes[:'scheduledPeriod']
	        @scheduled_period = attributes[:'scheduledPeriod']
	      end
	      
	    end
	  end
	
	
  end
end
