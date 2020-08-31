mkdir -p build
cd build
#cmake .. -G"Unix Makefiles" -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=boostmp -DCMAKE_INSTALL_PREFIX=../libs
make && make install && \
    cp ../libs/lib/libsymengine.a ../../calclib/libs/libsymengine.a && \
    cp ../libs/include/symengine ../../calclib/include/ -rf 
cd ..