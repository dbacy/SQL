select 10.0/3.0,                                              -- 10.333333
       format(10.0/3.0, 'n')  as '2 decimals',                -- 10.33       default is 2 decimals
       format(10.0/3.0, 'n1') as '1 decimal',                 -- 3.3         one decimal
       format(10.0/3.0, 'n0') as 'no decimals',               -- 3           no decimals
       format(10.0/3.0, 'p')  as 'a percentage',              -- 333.33%     display as percent
       format(10.0/3.0, 'c')  as 'currency',                  -- $3.33       display as currency
	format(10.0/3.0, 'c0') as 'curreny with no decimals'   -- $3       display as currency
