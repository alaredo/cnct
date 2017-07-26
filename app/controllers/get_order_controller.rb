class GetOrderController < ApplicationController
  def edit
    cnova = Cnova.new
    @response = cnova.getOrders
    
    @response.orders.each do |orderCnova|
      Order.transaction do
        order = Order.new
        
          customer = Customer.new()
          customer.idCustomerMP = orderCnova.customer.id
          customer.name = orderCnova.customer.name
          customer.document_number = orderCnova.customer.document_number
          customer.typeDoc = orderCnova.customer.type
          customer.created_at = orderCnova.customer.created_at
          customer.email = orderCnova.customer.email
          customer.birth_date = orderCnova.customer.birth_date
          customer.save
          
          aux = Aux.new
          aux.Logue(orderCnova.customer.phones.size)
          
          orderCnova.customer.phones.each do |ph|
            phone = Phone.new
            aux.Logue(ph.type)
            phone.type = ph.type
            phone.number = ph.number
            phone.customer_id = customer.id
            phone.save
          end
          
        order.customer_id = customer.id
        
        billingAddress = BillingAddress.new()
        billingAddress.address = orderCnova.billing.address
        billingAddress.number = orderCnova.billing.number
        billingAddress.complement = orderCnova.billing.complement
        billingAddress.quarter = orderCnova.billing.quarter
        billingAddress.city = orderCnova.billing.city
        billingAddress.state = orderCnova.billing.state
        billingAddress.country_id = orderCnova.billing.country_id
        billingAddress.zip_code = orderCnova.billing.zip_code
       billingAddress.save
        order.billingAddress_id = billingAddress.id
        
        shippingAddress = ShippingAddress.new
        shippingAddress.address= orderCnova.shipping.address, 
        shippingAddress.number= orderCnova.shipping.number, 
        shippingAddress.complement= orderCnova.shipping.complement, 
        shippingAddress.quarter= orderCnova.shipping.quarter, 
        shippingAddress.city= orderCnova.shipping.city, 
        shippingAddress.state= orderCnova.shipping.state, 
        shippingAddress.country_id= orderCnova.shipping.country_id, 
        shippingAddress.zip_code= orderCnova.shipping.zip_code, 
        shippingAddress.recipient_name= orderCnova.shipping.recipient_name
        shippingAddress.save
        order.shippingAddress_id = shippingAddress.id
        
        freight = Freight.new
        freight.actual_amount=orderCnova.freight.actual_amount
        freight.charged_amount=orderCnova.freight.charged_amount 
        freight.typeFreight=orderCnova.freight.type
        freight.save
        order.freight_id = freight.id
        
        order.idOrderMP= orderCnova.id 
        order.order_site_id=orderCnova.order_site_id
        order.site=orderCnova.site
        order.payment_type=orderCnova.payment_type 
        order.purcharsed_at=orderCnova.purchased_at
        order.updated_at=orderCnova.updated_at
        order.status=orderCnova.status
        order.total_amount=orderCnova.total_amount 
        order.total_discount_amount=orderCnova.total_discount_amount
        
        loja = Loja.where("code=?", orderCnova.site).take
        puts loja.inspect
        order.loja_id = loja.id
        
        order.save
        
        orderCnova.items.each do |item|
          orderItem = OrderItem.new
          orderItem.idOrderItemMP = item.id
          orderItem.sku_seller_id = item.sku_seller_id 
          orderItem.name = item.name 
          orderItem.sale_price = item.sale_price 
          orderItem.sent = item.sent
          
          freightItem = Freight.new
          freightItem.actual_amount = item.freight.actual_amount
          freightItem.transit_time = item.freight.transit_time
          freightItem.cross_docking_time = item.freight.cross_docking_time
          freightItem.save
          
          orderItem.freight_id = freightItem.id 
          orderItem.order_id = order.id
          orderItem.save
        end

        puts order.inspect

      end
    end
  end
end



  