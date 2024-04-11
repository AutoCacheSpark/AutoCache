#!/bin/bash



./spark-submit --master spark://master:7077 --class LinearSVCExample ./TestCases/SPARK-29686.jar file:///$SPARK_HOME/data/mllib/sample_libsvm_data.txt > ../Results/spark-29686.log