$HOME/install/openmpi-4.0.4-testbed/bin/mpirun --hostfile hosts.txt --mca pml ucx --mca btl ^tcp,openib -x UCX_NET_DEVICES=mlx5_0:1 -x UCX_IB_GID_INDEX=5 -np 3072 -N 32 ./xhpl
