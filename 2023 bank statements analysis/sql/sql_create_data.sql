select * from scratch_gvs.bank_transactions where lower(details) like '%*one%';

CREATE TABLE scratch_gvs.bank_transactions_final AS 
(
WITH cte1 as (
SELECT date_of_transaction, month_of_transaction, Replace(TRIM(details), '*', '') as details, transaction, deposit, cc_balance_paid, card
FROM scratch_gvs.bank_transactions where lower(details) not like '%internal transfer%' 
)

,cte2 as (
SELECT *, CASE WHEN lower(details) like '%spotify%' OR lower(details) like '%disney%' OR lower(details) like '%streamotion%'
                        OR lower(details) like '%netflix%' OR lower(details) like '%paramoun%' OR lower(details) like '%amznprimeau%'
                        THEN 'Streaming'
               WHEN lower(details) like '%uber eats%' OR lower(details) like '%pass%' or lower(details) like '%uber one%' or lower(details) like '%kfc%' OR lower(details) like '%mcdonald%' OR lower(details) like '%doordash%' 
                        OR lower(details) like '%menulog%' OR lower(details) like '%chirnside%' OR lower(details) like '%berlin%' OR lower(details) like '%food%' 
                        OR lower(details) like '%fish%'  OR lower(details) like '%grilld%' OR lower(details) like '%nandos%' or lower(details) like '%hungry%' THEN 'Fast Food'
               WHEN lower(details) like '%optus%'  OR lower(details) like '%kogan%' THEN 'Internet/Mobile'
               WHEN lower(details) like '%amazon%' THEN 'Amazon Shopping'
               WHEN lower(details) like '%woolworths%' OR lower(details) like '%coles%' or lower(details) like '%7-e%'THEN 'Groceries/Petrol'
               WHEN lower(details) like '%genesis%' or lower(details) like '%fit%' or lower(details) like '%muscle%' or lower(details) like '%bro%'
                        OR lower(details) like '%zac%' or lower(details) like '%panacea%' or lower(details) like '%bulk%'or lower(details) like '%science%'
                        OR lower(details) like '%protein%' or lower(details) like '%ninetofive%' or lower(details) like '%freedom%' THEN 'Gym/Fitness'
               WHEN lower(details) like '%event%' THEN 'Cinemas'
               WHEN lower(details) like '%transport%'  or lower(details) like '%uber trip%' or lower(details) like '%service nsw%'  or lower(details) like '%nrma%'
                        OR lower(details) like '%aami%' THEN 'Public/Private Transport costs'
               WHEN lower(details) like '%ato payment%' THEN 'Voluntary HECS repayment'
               WHEN lower(details) like '%travel insurance%' or lower(details) like '%intrepid%' or lower(details) like '%wise%' or lower(details) like '%courtyard%'       
                        OR lower(details) like '%keisei%' or lower(details) like '%thai%' or lower(details) like '%singapore%' or lower(details) like '%sim%'
                        OR lower(details) like '%osaka%' or lower(details) like '%klook%' or lower(details) like '%uniqlo%' or lower(details) like '%ruby%' THEN 'Travel'
               WHEN lower(details) like '%mariana%' or lower(details) like '%asnu%' THEN 'renovation' 
               WHEN lower(details) like '%linkedin%' OR lower(details) like '%cours%' OR lower(details) like '%strata%' THEN 'learning'
               WHEN lower(details) like '%ukvi%' THEN 'Moving UK'
               WHEN lower(details) like '%rest%' THEN 'Salary'
               WHEN lower(details) like '%bale%' OR lower(details) like '%academy%' THEN 'Clothing'
               WHEN cc_balance_paid = 'true' THEN 'Credit Card balance paid'
               ELSE 'Other'
               END AS category
               FROM cte1
               
                      




)

, cte3 AS (
select * from cte2 where lower(details) not like '%gaving%' and lower(details) not like '%osko%')

,cte4 AS (

select * from cte3 where details not in ( select details from cte3 where cc_balance_paid = true and card not in ('ANZ_Savings'))


)
select * from cte4
);

/*select * from scratch_gvs.bank_transactions_final; 'UBER EATS               HELP.UBER.COM'

select * from scratch_gvs.bank_transactions_final where card in ('ING_Savings', 'ANZ_Savings') and category not in ('Credit Card balance paid')   ;


select category, sum(transaction) as tot_out, sum(deposit) as tot_inf, coalesce(tot_out, 0) + coalesce(tot_inf, 0) as net from scratch_gvs.bank_transactions_final  group by 1  ;

select category, count(transaction) from scratch_gvs.bank_transactions_final group by 1

select distinct category, details from scratch_gvs.bank_transactions_final  where category = 'Gym/Fitness'*/