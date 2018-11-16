#!/bin/sh
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_9000 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 9000 > debug_mptcp_9000
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_4500 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 4500 > debug_mptcp_4500
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_1500 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 1500 > debug_mptcp_1500
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_750 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 750 > debug_mptcp_750
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_512 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 512 > debug_mptcp_512
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_256 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 256 > debug_mptcp_256
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_128 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 128 > debug_mptcp_128
../../datacenter/htsim_tcp_permutation -o mptcp_logfile_64 -nodes 432 -conns 432 -ssthresh 15 -q 100 -sub 8 -size 64 > debug_mptcp_64
python process_mptcp_data.py mptcp_logfile_9000
python process_mptcp_data.py mptcp_logfile_4500
python process_mptcp_data.py mptcp_logfile_1500
python process_mptcp_data.py mptcp_logfile_750
python process_mptcp_data.py mptcp_logfile_512
python process_mptcp_data.py mptcp_logfile_256
python process_mptcp_data.py mptcp_logfile_128
python process_mptcp_data.py mptcp_logfile_64


