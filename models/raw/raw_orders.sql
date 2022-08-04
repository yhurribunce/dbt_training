SELECT *
        , dateadd(day,-89,current_date()) as last_updated

FROM {{ source('GLOBALMART', 'ORDERS') }}