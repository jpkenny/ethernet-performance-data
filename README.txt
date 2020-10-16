#
# This repository is a Transparency and Reproducibility Initiative data
# artifact for the publication: "An Evaluation of Ethernet Performance for
# Scientific Workloads", by Joseph P. Kenny, Jeremiah J. Wilke, 
# Craig D. Ulmer, Gavin M. Baker, Samuel Knight and Jerrold A. Friesen 
#


#
# Testbed Hardware/Software Details
#
CPU                    2x Intel E5-2683 v4 (32 total cores)
OS/Kernel              CentOS Linux release 7.7.1908
                       Linux 3.10.0-1062.9.1.el7.x86_64
NIC                    Mellanox ConnectX-5 MT27800
                       hw_ver: 0x0, board_id: MT_0000000011
NIC Drivers/Firmware   MLNX_OFED_LINUX-4.6-1.0.1.1, fw\_ver: 16.24.1000
Switch OS               Mellanox Onyx, version 3.8.2004 (3.7.1134 for SN2700)


#
# TCP Host Tuning
# Primarily CentOS 7 default values.
# Did not see improvement from the recommended settings in N. Hanford and B. Tierney,
# “Recent linux tcp updates, and how to tune your 100g host,” 2016.
#
mtu 4500
txqueuelen 1000
net.core.rmem_max = 212992
net.core.wmem_max = 212992
net.ipv4.tcp_rmem = 4096        87380   6291456
net.ipv4.tcp_wmem = 4096        16384   4194304
net.ipv4.tcp_congestion_control = cubic
net.ipv4.tcp_mtu_probing = 0
net.core.default_qdisc = pfifo_fast


#
# Benchmark Details
#
Sample launch scripts are provided in benchmarks directory.
Compiled with gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-39)
MPI apps used Open MPI version 4.0.4.
 + benchmark launch scripts specify transports used
 + https://www.open-mpi.org/
MPI point-to-point tests
 + osu_bw and osu_latency from mvapich2 distribution
 + https://mvapich.cse.ohio-state.edu/
Incast benchmark script
 + listing provided in Kenny, Joseph P., and Craig D. Ulmer. "RoCE: Promising
   Technology for Ethernet as a High Performance Networking Fabric."
   No. SAND2019-13444. Sandia National Lab.(SNL-CA), 
   Livermore, CA (United States), 2019.
Halo3D motif
 + ember/mpi/halo3d-26/
 + https://github.com/sstsimulator/ember
FFT proxy
 + chatterbug/subcom3d-a2a
 + https://github.com/hpcgroup/chatterbug
HPL benchmark
 + https://www.netlib.org/benchmark/hpl/
 + CCFLAGS  = -O3 -w -z noexecstack -z relro -z now -Wall
 + intel-mkl-2017.2.174



# Switch Configurations
Sample switch configurations are found in the switch-configs directory.
Ports connecting core to leaf switches are members of a port-channel.
"sample-config-ethernet.txt" shows basic ethernet configuration.
"sample-config-pfc.txt" shows commands that enable PFC.
"sample-config-ets.txt" shows commands that enable ETS.

