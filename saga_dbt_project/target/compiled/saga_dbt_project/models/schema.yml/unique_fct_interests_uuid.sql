
    
    

select
    uuid as unique_field,
    count(*) as n_records

from "dev"."main"."fct_interests"
where uuid is not null
group by uuid
having count(*) > 1


