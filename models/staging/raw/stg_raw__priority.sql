with 

source as (

    select * from {{ source('raw', 'priority') }}

),

renamed as (

    select
        compny_name as company,
        replace(priority, 'loow', 'Low') as priority
    from source

)

select * from renamed
