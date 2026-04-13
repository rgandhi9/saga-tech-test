
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select street_name
from "dev"."main"."std_customers"
where street_name is null



  
  
      
    ) dbt_internal_test