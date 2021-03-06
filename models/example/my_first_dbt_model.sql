

{{ config(
    materialized='table',
    location_root='/mnt/data_lake'
    
) }}

with source_data as (

    select 1 as id
    union all
    select 3 as id
    union all
    select 2 as id
    
)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
