with source as(
select * from dev.public.WEATHER_TOTAL
),
renamed as (

select
    v:time::integer as weather_time,
    v:city:country::string as weather_country
from source
)

select * from renamed