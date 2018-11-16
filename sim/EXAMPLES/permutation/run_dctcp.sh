#!/bin/sh
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_9000 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 9000 > debug_dctcp_9000
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_4500 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 4500 > debug_dctcp_4500
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_1500 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 1500 > debug_dctcp_1500
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_750 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 750 > debug_dctcp_750
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_512 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 512 > debug_dctcp_512
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_256 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 256 > debug_dctcp_256
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_128 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 128 > debug_dctcp_128
../../datacenter/htsim_dctcp_permutation -o dctcp_logfile_64 -nodes 432 -conns 432 -ssthresh 15 -q 100 -size 64 > debug_dctcp_64

python process_dctcp_data.py dctcp_logfile_9000
python process_dctcp_data.py dctcp_logfile_4500
python process_dctcp_data.py dctcp_logfile_1500
python process_dctcp_data.py dctcp_logfile_750
python process_dctcp_data.py dctcp_logfile_512
python process_dctcp_data.py dctcp_logfile_256
python process_dctcp_data.py dctcp_logfile_128
python process_dctcp_data.py dctcp_logfile_64
#gnuplot permutation.plot
