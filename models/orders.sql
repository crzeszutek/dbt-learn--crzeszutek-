

SELECT o.order_id,
        o.customer_id,
        o.order_date,
        SUM(p.amount) as total_amount
FROM {{ref('stg_orders')}} as o
JOIN {{ref('stg_payments')}} as p
on o.order_id = p.order_id
WHERE p.payment_status <> 'fail'
group by o.order_id, o.customer_id, o.order_date