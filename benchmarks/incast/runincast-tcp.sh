#!/bin/bash

size="8"
#size="8192"
#size="81920"
#size="819200"
#size="8388608"

python traffic.py --test iperf3 --sources host250 --destination host249 --max_streams 10 --client-options "-t 5 -l $size"
mv traffic.out s$size-src1.out
python traffic.py --test iperf3 --sources host[250,251] --destination host249 --max_streams 10 --client-options "-t 5 -l $size"
mv traffic.out s$size-src2.out
python traffic.py --test iperf3 --sources host[250,251,252] --destination host249 --max_streams 10 --client-options "-t 5 -l $size"
mv traffic.out s$size-src3.out
python traffic.py --test iperf3 --sources host[250,251,252,253] --destination host249 --max_streams 10 --client-options "-t 5 -l $size"
mv traffic.out s$size-src4.out
