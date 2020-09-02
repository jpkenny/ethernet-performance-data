#!/bin/bash

MPIRUN=$HOME/install/openmpi-4.0.4-testbed/bin/mpirun
EXE_DIR=$HOME/testbed-openmpi/osu

$MPIRUN --hostfile ./hosts-intra.txt --mca pml ucx --mca btl ^tcp,openib -x UCX_NET_DEVICES=mlx5_0:1 -x UCX_IB_GID_INDEX=5 -np 2 -N 1 $EXE_DIR/osu_latency >& stdout.latency
