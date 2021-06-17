alter table import.data 
alter column price set data type numeric using price::numeric,
alter column full_price set data type numeric using full_price::numeric,
alter column final_price set data type numeric using final_price::numeric,
alter column agent_amount set data type numeric using agent_amount::numeric,
alter column agent_percent set data type numeric using agent_percent::numeric;

alter table import.data
alter column latitude type numeric using coalesce(latitude::numeric, nullif(latitude, '')::numeric),
alter column longitude type numeric using coalesce(longitude::numeric, nullif(longitude, '')::numeric);

alter table import.data
alter column user_count type smallint using user_count::smallint;

alter table import.data
alter column created type date using created::date,
alter column date_of_finish_cooking type date using date_of_finish_cooking::date,
alter column date_of_visit type date using date_of_visit::date;
