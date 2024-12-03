rm libs -rf
mkdir -p build
cd build
cmake .. -DWITH_FLINT=ON -DWITH_MPFR:BOOL=ON 
make -j 8
sudo make install
