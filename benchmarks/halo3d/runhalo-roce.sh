#!/bin/bash

MPIRUN=$HOME/install/openmpi-4.0.4-testbed/bin/mpirun
EXE_DIR=$HOME/testbed-openmpi

$MPIRUN --hostfile hosts-halo-random.txt --mca pml ucx --mca btl ^tcp,openib -x UCX_NET_DEVICES=mlx5_0:1 -x UCX_IB_GID_INDEX=5 -np 48 -N 1 $EXE_DIR/halo3d-26/halo3d-26 -pex 4 -pey 4 -pez 3 -nx 100 -ny 100 -nz 100 -vars 8 -sleep 216000 -iterations 16000 -print 1 >& stdout.app1
