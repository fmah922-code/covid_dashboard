{{ config(tags=["transformation"], schema = 'clean', materialized='ephemeral') }}

SELECT 
    CustomerID,
    CASE WHEN 
        TechSupport = 'No internet service' THEN 1 ELSE 0
        END AS TechSupport
FROM  {{ ref('TechSupport') }} 