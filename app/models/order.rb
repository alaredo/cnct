class Order < ActiveRecord::Base
  has_many :orderItem
  belongs_to :customer
  belongs_to :loja
  belongs_to :billingAddress
  belongs_to :shippingAddress
  belongs_to :freight
  
end
