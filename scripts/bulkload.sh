#!/bin/bash

# **************************** longitudes ****************************
./build/throughput --keys_file=/home/PROJECTS/DATASETS/Binary/longitudes-200M.bin.data \
--keys_file_type=binary \
--init_num_keys=100000000 \
--total_num_keys=100000000 \
--batch_size=1000 \
--print_batch_stats > ./reports_bulkload/longititude_100M.txt
echo "Bulkload [longitudes] Finished!"

# **************************** longlat ****************************
./build/throughput --keys_file=/home/PROJECTS/DATASETS/Binary/longlat-200M.bin.data \
--keys_file_type=binary \
--init_num_keys=100000000 \
--total_num_keys=100000000 \
--batch_size=10000000 \
--print_batch_stats > ./reports_bulkload/longlat_100M.txt
echo "Bulkload [longlat] Finished!"

# **************************** lognormal ****************************
./build/throughput_lgn --keys_file=/home/PROJECTS/DATASETS/Binary/lognormal-190M.bin.data \
--keys_file_type=binary \
--init_num_keys=100000000 \
--total_num_keys=100000000 \
--batch_size=10000000 \
--print_batch_stats > ./reports_bulkload/lognormal_100M.txt
echo "Bulkload [lognormal] Finished!"

# **************************** ycsb ****************************
./build/throughput_ycsb --keys_file=/home/PROJECTS/DATASETS/Binary/ycsb-200M.bin.data \
--keys_file_type=binary \
--init_num_keys=100000000 \
--total_num_keys=100000000 \
--batch_size=10000000 \
--print_batch_stats > ./reports_bulkload/ycsb_100M.txt
echo "Bulkload [YCSB] Finished!"

