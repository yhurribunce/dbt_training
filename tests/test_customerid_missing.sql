
SELECT CUSTOMERID FROM {{ ref('raw_customers') }}

EXCEPT

SELECT CUSTOMERID FROM {{ ref('stg_orders') }}
