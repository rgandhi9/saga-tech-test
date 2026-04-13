
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select uuid
from "dev"."main"."fct_interests"
where uuid is null



  
  
      
    ) dbt_internal_test