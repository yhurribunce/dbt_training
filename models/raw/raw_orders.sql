SELECT *
        , dateadd(day,-89,current_date()) as last_updated
        ,'Testing pull request'
FROM {{ source('GLOBALMART', 'ORDERS') }}