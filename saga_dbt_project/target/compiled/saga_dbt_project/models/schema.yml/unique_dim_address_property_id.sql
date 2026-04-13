
    
    

select
    property_id as unique_field,
    count(*) as n_records

from "dev"."main"."dim_address"
where property_id is not null
group by property_id
having count(*) > 1


