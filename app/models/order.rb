class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :seller
  belongs_to :billingAddress
  belongs_to :shippingAddress
  belongs_to :freight
end
