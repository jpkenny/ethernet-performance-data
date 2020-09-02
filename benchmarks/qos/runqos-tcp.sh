#!/bin/bash

MPIRUN=$HOME/install/openmpi-4.0.4-testbed/bin/mpirun
EXE_DIR=$HOME/testbed-openmpi

$MPIRUN --hostfile hosts-halo-random.txt --mca btl_tcp_if_include eth2.100 --mca pml ^ucx --mca btl ^openib,uct -np 48 -N 1 $EXE_DIR/halo3d-26/halo3d-26 -pex 4 -pey 4 -pez 3 -nx 100 -ny 100 -nz 100 -vars 8 -sleep 216000 -iterations 30000 -print 1 >& stdout.app1 &

sleep 10

$MPIRUN --hostfile hosts-subcom-random.txt --mca btl_tcp_if_include eth2.100 --mca pml ^ucx --mca btl ^openib,uct -np 48 -N 1 $EXE_DIR/subcom-a2a/subcom-a2a -pex 4 -pey 4 -pez 3 -nx 10000 -ny 10000 -nz 10000 -iterations 16000 -print 1 >& stdout.app2 &

wait
wait
