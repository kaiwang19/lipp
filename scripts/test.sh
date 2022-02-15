#!/bin/bash


# **************************** longitudes ****************************

# Read-only
./build/throughput --keys_file=/home/PROJECTS/DATASETS/Binary/longitudes-200M.bin.data \
--keys_file_type=binary \
--init_num_keys=100000000 \
--total_num_keys=200000000 \
--batch_size=10000000 \
--insert_frac=0.0 \
--time_limit=1 \
--print_batch_stats > ./reports/longititude_uniform_100M_200M_10M_0.0.txt
echo "Task for [longitudes Read-only uniform 10M_batch] Finished!"