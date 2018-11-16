#!/bin/sh
../../datacenter/htsim_ndp_permutation -o logfile_9000 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 9000 > debugout_9000
../../datacenter/htsim_ndp_permutation -o logfile_4500 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 4500 > debugout_4500
../../datacenter/htsim_ndp_permutation -o logfile_1500 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 1500 > debugout_1500
../../datacenter/htsim_ndp_permutation -o logfile_750 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 750 > debugout_750
../../datacenter/htsim_ndp_permutation -o logfile_512 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 512 > debugout_512
../../datacenter/htsim_ndp_permutation -o logfile_256 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 256 > debugout_256
../../datacenter/htsim_ndp_permutation -o logfile_128 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 128 > debugout_128
../../datacenter/htsim_ndp_permutation -o logfile_64 -strat perm -conns 432 -nodes 432 -cwnd 23 -q 8 -size 64 > debugout_64
python process_data.py logfile_9000
python process_data.py logfile_4500
python process_data.py logfile_1500
python process_data.py logfile_750
python process_data.py logfile_512
python process_data.py logfile_256
python process_data.py logfile_128
python process_data.py logfile_64




#gnuplot permutation.plot
