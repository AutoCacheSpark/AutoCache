# README



## Tool

This project contains the implementation of AutoCache and testCase. Apache Spark is one of the most popular distributed frameworks for big data processing and analysis.   Caching is one of the most important techniques for programmers to improve the execution speed of applications. AutoCache can help users bridge the gap to better usage of caching and enable applications benefit from implicitly caching data in a intrusive way.



## Prerequisites

- A 8-core processor and 16GB memory minimum
- Centos 7.9 or later
- Spark-2.2.3 or higher
- Scala-2.11
- Jdk1.8



## TestCases

This path holds the script for one-click testing of AutoCache and the pre-compiled AutoCache version SPARK-29686.jar.



## Data

The  input data for  test case spark-29686 is  from the official Spark, which can be found at `<SPARK_HOME>/data/mllib/sample_libsvm_data.tx`, and is also available under `AutoCache/data/`.



## Jars

The jar implemented by AutoCache is stored under `AutoCache/Jars/`. You can  copy  spark-core_2.11-2.2.3.jar to '' `<SPARK-HOME>/jars` . You can directly submit Spark applications to the cluster with AutoCache. 

For a deeper understanding of the mechanism of AutoCache, you can replace the files in `AutoCache/Codes/` with the corresponding directory files in the Spark source code and recompile the Spark module, The compile command is as follows:

`mvn -DskipTests clean package`

## Run

Here is the example of spark-2968 in the paper.

```
$ #check the test case jar(eg./TestCases/SPARK-29686.jar)
$ #Execute the test case
$ <SPARK-HOME>/sbin/sh start-all.sh   #start Spark
$ ./spark-submit --master spark://master:7077 --class LinearSVCExample ./TestCases/SPARK-29686.jar file:///$SPARK_HOME/data/mllib/sample_libsvm_data.txt > ../Results/spark-29686.log 
$ #sh TestAutoCache.sh
```



## Result

After executing the previous step, the `spark-29686.log` file will  be generated under `AutoCache/Result/`. You can analyze the log file to  check caching  of AutoCache. Also, you can observe Storage option on the Spark WEBUI.

