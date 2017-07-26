class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :freight
  belongs_to :giftWrap
end
