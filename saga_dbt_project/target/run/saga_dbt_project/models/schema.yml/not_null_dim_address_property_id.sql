
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select property_id
from "dev"."main"."dim_address"
where property_id is null



  
  
      
    ) dbt_internal_test