cd build
make && make install && \
    cp ../libs/lib/libsymengine.a ../../calclib/libs/libsymengine.a && \
    cp ../libs/include/symengine ../../calclib/include/ -rf 
cd ..