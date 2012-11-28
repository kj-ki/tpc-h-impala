/usr/bin/hadoop fs -mkdir /tpch/ 

/usr/bin/hadoop fs -mkdir /tpch/customer
/usr/bin/hadoop fs -mkdir /tpch/lineitem
/usr/bin/hadoop fs -mkdir /tpch/nation
/usr/bin/hadoop fs -mkdir /tpch/orders
/usr/bin/hadoop fs -mkdir /tpch/part
/usr/bin/hadoop fs -mkdir /tpch/partsupp
/usr/bin/hadoop fs -mkdir /tpch/region
/usr/bin/hadoop fs -mkdir /tpch/supplier

/usr/bin/hadoop fs -copyFromLocal customer.tbl /tpch/customer/
/usr/bin/hadoop fs -copyFromLocal lineitem.tbl /tpch/lineitem/
/usr/bin/hadoop fs -copyFromLocal nation.tbl /tpch/nation/
/usr/bin/hadoop fs -copyFromLocal orders.tbl /tpch/orders/
/usr/bin/hadoop fs -copyFromLocal part.tbl /tpch/part/
/usr/bin/hadoop fs -copyFromLocal partsupp.tbl /tpch/partsupp/
/usr/bin/hadoop fs -copyFromLocal region.tbl /tpch/region/
/usr/bin/hadoop fs -copyFromLocal supplier.tbl /tpch/supplier/
