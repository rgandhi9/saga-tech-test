
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select surname
from "dev"."main"."std_customers"
where surname is null



  
  
      
    ) dbt_internal_test