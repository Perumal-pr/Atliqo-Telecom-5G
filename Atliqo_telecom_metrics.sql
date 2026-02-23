create database telecom;

use telecom;

show tables;

select * from fact_atliqo_metrics limit 20;

select * from fact_market_share limit 20;

select * from fact_plan_revenue limit 20;

select * from dim_cities limit 20;

select * from dim_date limit 20;

select * from dim_plan limit 20;

-- Total revenue in atliqo telecom
 select round(sum(atliqo_revenue_crores)*100000000,2) as revenue from fact_atliqo_metrics;
 
 
 -- Average revenue in atliqo telecom
 select round(avg(atliqo_revenue_crores),2) as avg_revenue from fact_atliqo_metrics;
 
 -- Average of arpu(average revenue per user)
 select round(avg(arpu),2) as avg_revenue from fact_atliqo_metrics;
 
 -- total active users --
select round(sum(active_users)*100000,2) as active_users from fact_atliqo_metrics;

-- total unsubscribed users -- 
select round(sum(unsubscribed_users)*100000,2) as active_users from fact_atliqo_metrics;
 
-- avg market share percentage --
select round(avg(ms_pct),4) from fact_market_share;



