
  
    

    create or replace table `data-testing-390318`.`dev_zack`.`products`
    
    
    OPTIONS()
    as (
      with

products as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__products`
)

select
    product_id,
    cost,
    category,
    name,
    brand,
    retail_price,
    department,
    sku,
    distribution_center_id
from
    products
    );
  