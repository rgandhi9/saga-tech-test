
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    uuid as unique_field,
    count(*) as n_records

from "dev"."main"."fct_interests"
where uuid is not null
group by uuid
having count(*) > 1



  
  
      
    ) dbt_internal_test