CXX=$HOME/install/openmpi-4.0.4-testbed/bin/mpicxx
CXXFLAGS=-O3 -std=c++11 -fPIC
CPPFLAGS=-I../util
LIBS=

halo3d-26: halo3d-26.cc
        $(CXX) $(CPPFLAGS) $(CXXFLAGS) -o $@ $< $(LIBS)

clean:
        rm halo3d-26
