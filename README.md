# TPC-H Benchmark on Cloudera Impala
You can run TPC-H on your Impala cluster. This scripts based on "TPC-H Benchmark on Hive".


## This README covers the following topics.
1. How to set up Cloudera Impala
2. How to generate/prepare the data
3. How to run the queries


## How to set up Cloudera Impala
See below.  
https://ccp.cloudera.com/display/IMPALA10BETADOC/Installing+Impala

And, you need to setup Hive cluster to execute DDL (CREATE, DROP).  
https://ccp.cloudera.com/display/CDH4DOC/Hive+Installation

If you want to use virtual machine environment, you can download image files.  
https://ccp.cloudera.com/display/SUPPORT/Cloudera%27s+Impala+Demo+VM


## How to generate/prepare the data
The data is generated using the DBGEN software on TPC-H website.  
See README in the DBGEN install package on details of how to generate the dataset. 

After the dataset is generated, they need to be loaded in to Hadoop distributed file system (HDFS).  
There is a script for doing that under ./data directory. But first you have to move all the dataset to that directory.  
Then you can upload them to HDFS by execute the following command:  
$./tpch_prepare_data.sh  

After running the script, you can check the data on HDFS with the following command:  
$hadoop fs -ls /tpch

Note: Maybe you need to modefy DBGEN makefile like this.  
 CC = gcc  
 DATABASE = SQLSERVER  
 MACHINE = LINUX  
 WORKLOAD = TPCH  
 CFLAGS = -O -DDBNAME=\"dss\" -D$(MACHINE) -D$(DATABASE) -D$(WORKLOAD) -D_FILE_OFFSET_BITS=64  


## How to run the queries
You can run those queries by running the script "tpch_benchmark.sh".  
There are some optional settings in benchmark.conf.  
For example, edit IMPALA_CMD, if you want to connect remote impala server.  

Note: This scripts NOT support Query 11 and 22. Impala 0.1 can't execute CROSS JOIN queries.


## Reference
The original TPC-H on Hive: https://issues.apache.org/jira/browse/HIVE-600  
The official TPC-H specification: http://www.tpc.org/tpch/spec/tpch2.14.4.pdf  
"DBGEN" which generates the TPC-H test data set: http://www.tpc.org/tpch/spec/tpch_2_14_3.zip  


## Thanks
TPC-H on Hive developer, Yuntao Jia. (yjia@facebook.com)  
Clodera Impala developers.
