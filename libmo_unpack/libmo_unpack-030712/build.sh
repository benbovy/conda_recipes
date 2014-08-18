#!/bin/bash

cd libmo_unpack
./make_library
#./distribute.sh $PREFIX
#gcc -c -fPIC -O4 -mfpmath=sse -msse -I include -D_LARGEFILE_SOURCE *.c
gcc -shared -Wl -o lib/libmo_unpack.so *.o
synch_dir=$PREFIX
ls -all lib
#mkdir -p $synch_dir/lib $synch_dir/include 2>/dev/null
#chmod 775 $synch_dir/lib $synch_dir/include 2>/dev/null
mkdir -p $PREFIX/lib $PREFIX/include
cp lib/lib* $PREFIX/lib
cp include/*.h $PREFIX/include
