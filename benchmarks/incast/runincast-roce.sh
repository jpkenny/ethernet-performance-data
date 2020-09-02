#!/bin/bash

size="8"
#size="8192"
#size="81920"
#size="819200"
#size="8388608"

python ib-traffic.py --test ib_write_bw --sources host250 --destination host249 --max_streams 10 --options "-D 5 -s $size"
mv test-ib.out s$size-src1.out
python ib-traffic.py --test ib_write_bw --sources host[250,251] --destination host249 --max_streams 10 --options "-D 5 -s $size"
mv test-ib.out s$size-src2.out
python ib-traffic.py --test ib_write_bw --sources host[250,251,252] --destination host249 --max_streams 10 --options "-D 5 -s $size"
mv test-ib.out s$size-src3.out
python ib-traffic.py --test ib_write_bw --sources host[250,251,252,253] --destination host249 --max_streams 10 --options "-D 5 -s $size"
mv test-ib.out s$size-src4.out
