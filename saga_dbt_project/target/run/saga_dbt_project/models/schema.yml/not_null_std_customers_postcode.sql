
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select postcode
from "dev"."main"."std_customers"
where postcode is null



  
  
      
    ) dbt_internal_test