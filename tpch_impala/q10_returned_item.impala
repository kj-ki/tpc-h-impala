-- the query
insert overwrite table q10_returned_item
select 
  c_custkey, c_name, sum(l_extendedprice * (1 - l_discount)) as revenue, 
  cast(cast(c_acctbal*1000 as int)/1000 as string), n_name, c_address, c_phone, c_comment
from
  customer c join orders o 
  on 
    c.c_custkey = o.o_custkey and o.o_orderdate >= '1993-10-01' and o.o_orderdate < '1994-01-01'
  join nation n 
  on 
    c.c_nationkey = n.n_nationkey
  join lineitem l 
  on 
    l.l_orderkey = o.o_orderkey and l.l_returnflag = 'R'
group by c_custkey, c_name, cast(c_acctbal*1000 as int), c_phone, n_name, c_address, c_comment
order by revenue desc 
limit 20;

