$HOME/install/openmpi-4.0.4-testbed/bin/mpirun --hostfile hosts.txt --mca btl_tcp_if_include eth2.100 --mca pml ^ucx --mca btl ^openib,uct -np 3072 -N 32 ./xhpl
