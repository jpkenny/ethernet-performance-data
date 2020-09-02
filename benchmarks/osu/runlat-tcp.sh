#!/bin/bash

MPIRUN=$HOME/install/openmpi-4.0.4-testbed/bin/mpirun
EXE_DIR=$HOME/testbed-openmpi/osu

$MPIRUN --mca btl_tcp_if_include eth2.100 --mca pml ^ucx --mca btl ^openib,uct --hostfile ./hosts-intra.txt -np 2 -N 1 $EXE_DIR/osu_latency >& stdout.latency
