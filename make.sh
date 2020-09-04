rm libs -rf
mkdir -p build
cd build
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=boostmp -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0
make 
make install
cd ..
if [ ! -f libs/lib/libsymengine.a ]; then
    cp libs/lib64/libsymengine.a libs/lib/
fi