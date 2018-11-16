set term pdfcairo font "Helvetica,16"

set xlabel "Flow rank"
set ylabel "Throughput (Gbps)" offset 1.5
#set grid

set yrange [0:10]
set xrange [0:432]
set ytics 2
set key right bottom
set key font ",16"

#plot "rates.ndp" using 0:($1/1000) w l lc rgb "red" lw 3 t "NDP",\
#     "rates.mptcp" using 0:($1/1000) w l lc rgb "blue" lw 3 t "MPTCP",\
#     "rates.dctcp" using 0:($1/1000) w l lc rgb "black" lw 3 t "DCTCP",\
#     "rates.dcqcn" using 0:($1/1000) w l lc rgb "green" lw 3 t "DCQCN"

set output "permutation_original.pdf"
plot "ndp/logfile_9000.rates" using 0:1 w l lc rgb "red" lw 3 t "NDP",\
     "mptcp/mptcp_logfile_9000.rates" using 0:1 w l lc rgb "blue" lw 3 t "MPTCP",\
     "dcqcn/dcqcn_logfile_9000.rates" using 0:1 w l lc rgb "green" lw 3 t "DCQCN",\
     "dctcp/dctcp_logfile_9000.rates" using 0:1 w l lc rgb "black" lw 3 t "DCTCP"

    
set key outside right bottom
#set key spacing 0.8
set key font ",14"

set output "permutation_ndp.pdf"
plot "ndp/logfile_9000.rates" using 0:1 w l lc rgb "red" lw 3 t "9000B",\
     "ndp/logfile_4500.rates" using 0:1 w l lc rgb "blue" lw 3 t "4500B",\
     "ndp/logfile_1500.rates" using 0:1 w l lc rgb "green" lw 3 t "1500B",\
     "ndp/logfile_750.rates" using 0:1 w l lc rgb "cyan" lw 3 t "750B",\
     "ndp/logfile_512.rates" using 0:1 w l lc rgb "magenta" lw 3 t "512B",\
     "ndp/logfile_256.rates" using 0:1 w l lc rgb "black" lw 3 t "256B",\
     "ndp/logfile_128.rates" using 0:1 w l lc rgb "grey" lw 3 t "128B",\
     "ndp/logfile_64.rates" using 0:1 w l lc rgb "orange" lw 3 t "64B"

    
set output "permutation_dctcp.pdf"
plot "dctcp/dctcp_logfile_9000.rates" using 0:1 w l lc rgb "red" lw 3 t "9000B",\
     "dctcp/dctcp_logfile_4500.rates" using 0:1 w l lc rgb "blue" lw 3 t "4500B",\
     "dctcp/dctcp_logfile_1500.rates" using 0:1 w l lc rgb "green" lw 3 t "1500B",\
     "dctcp/dctcp_logfile_750.rates" using 0:1 w l lc rgb "cyan" lw 3 t "750B",\
     "dctcp/dctcp_logfile_512.rates" using 0:1 w l lc rgb "magenta" lw 3 t "512B",\
     "dctcp/dctcp_logfile_256.rates" using 0:1 w l lc rgb "black" lw 3 t "256B",\
     "dctcp/dctcp_logfile_128.rates" using 0:1 w l lc rgb "grey" lw 3 t "128B",\
     "dctcp/dctcp_logfile_64.rates" using 0:1 w l lc rgb "orange" lw 3 t "64B"

set output "permutation_dcqcn.pdf"
plot "dcqcn/dcqcn_logfile_9000.rates" using 0:1 w l lc rgb "red" lw 3 t "9000B",\
     "dcqcn/dcqcn_logfile_4500.rates" using 0:1 w l lc rgb "blue" lw 3 t "4500B",\
     "dcqcn/dcqcn_logfile_1500.rates" using 0:1 w l lc rgb "green" lw 3 t "1500B",\
     "dcqcn/dcqcn_logfile_750.rates" using 0:1 w l lc rgb "cyan" lw 3 t "750B",\
     "dcqcn/dcqcn_logfile_512.rates" using 0:1 w l lc rgb "magenta" lw 3 t "512B",\
     "dcqcn/dcqcn_logfile_256.rates" using 0:1 w l lc rgb "black" lw 3 t "256B",\
     "dcqcn/dcqcn_logfile_128.rates" using 0:1 w l lc rgb "grey" lw 3 t "128B",\
     "dcqcn/dcqcn_logfile_64.rates" using 0:1 w l lc rgb "orange" lw 3 t "64B"


set output "permutation_mptcp.pdf"
plot "mptcp/mptcp_logfile_9000.rates" using 0:1 w l lc rgb "red" lw 3 t "9000B",\
     "mptcp/mptcp_logfile_4500.rates" using 0:1 w l lc rgb "blue" lw 3 t "4500B",\
     "mptcp/mptcp_logfile_1500.rates" using 0:1 w l lc rgb "green" lw 3 t "1500B",\
     "mptcp/mptcp_logfile_750.rates" using 0:1 w l lc rgb "cyan" lw 3 t "750B",\
     "mptcp/mptcp_logfile_512.rates" using 0:1 w l lc rgb "magenta" lw 3 t "512B",\
     "mptcp/mptcp_logfile_256.rates" using 0:1 w l lc rgb "black" lw 3 t "256B",\
     "mptcp/mptcp_logfile_128.rates" using 0:1 w l lc rgb "grey" lw 3 t "128B",\
     "mptcp/mptcp_logfile_64.rates" using 0:1 w l lc rgb "orange" lw 3 t "64B"
   
