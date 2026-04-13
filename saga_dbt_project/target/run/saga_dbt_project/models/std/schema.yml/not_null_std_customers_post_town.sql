
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select post_town
from "dev"."main"."std_customers"
where post_town is null



  
  
      
    ) dbt_internal_test