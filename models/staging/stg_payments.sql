SELECT id as payment_id, 
        orderid as order_id, 
        paymentmethod as payment_method, 
        status as payment_status,
        amount * 0.01 as amount, 
        created as created_at
FROM RAW.stripe.payment