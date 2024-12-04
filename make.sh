rm libs -rf
mkdir -p build
cd build
cmake .. -DWITH_FLINT=ON -DWITH_MPFR:BOOL=ON -DBUILD_TESTS=OFF
make -j 16
if [ "$(id -u)" -ne 0 ]; then
    sudo make install
fi
make install
