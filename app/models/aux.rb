class Aux
  include ActiveModel::Model
  attr_accessor :id, :name
  

  def Logue (text)
    Rails.logger.debug "=================================================="
    Rails.logger.debug text
    Rails.logger.debug "=================================================="
  end
end