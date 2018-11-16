#!/bin/sh
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_9000 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 9000 > debug_dcqcn_9000
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_4500 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 4500 > debug_dcqcn_4500
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_1500 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 1500 > debug_dcqcn_1500
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_750 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 750 > debug_dcqcn_750
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_512 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 512 > debug_dcqcn_512
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_256 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 256 > debug_dcqcn_256
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_128 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 128 > debug_dcqcn_128
../../datacenter/htsim_dctcp_permutation_lossless -o dcqcn_logfile_64 -nodes 432 -conns 432 -cwnd 23 -q 100 -size 64 > debug_dcqcn_64

python process_dctcp_data.py dcqcn_logfile_9000
python process_dctcp_data.py dcqcn_logfile_4500
python process_dctcp_data.py dcqcn_logfile_1500
python process_dctcp_data.py dcqcn_logfile_750
python process_dctcp_data.py dcqcn_logfile_512
python process_dctcp_data.py dcqcn_logfile_256
python process_dctcp_data.py dcqcn_logfile_128
python process_dctcp_data.py dcqcn_logfile_64





#gnuplot permutation.plot
