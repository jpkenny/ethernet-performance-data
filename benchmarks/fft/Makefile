CXX=$HOME/install/openmpi-4.0.4-testbed/bin/mpicxx
CXXFLAGS= -O3 -std=c++11 -fPIC
CPPFLAGS= -I../util

all: subcom-a2a

subcom-a2a : subcom-a2a.cc
        $(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $@ $<

clean:
        rm -f subcom-a2a$(SUFFIX)
