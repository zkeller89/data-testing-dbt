
  
    

    create or replace table `data-testing-390318`.`dev_zack`.`inventory_items`
    
    
    OPTIONS()
    as (
      with

inventory_items as (
    select * from `data-testing-390318`.`dev_zack`.`stg_ecommerce__inventory_items`
)

select
    inventory_item_id,
    product_id,
    created_at,
    sold_at,
    cost,
    product_category,
    product_name,
    product_brand,
    product_retail_price,
    product_department,
    product_sku,
    product_distribution_center_id,
from
    inventory_items
    );
  