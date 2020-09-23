rm libs -rf
mkdir -p build
cd build
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=boostmp -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=flint -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0  -DGMP_LIBRARIES=C:\msys64\mingw64\lib -DFLINT_LIBRARY=D:\work\calcwin\flint\lib\Win32\Debug -DFLINT_INCLUDE_DIR=D:\work\calcwin\flint\lib\Win32\Debug -DMPFR_LIBRARY=C:\msys64\mingw64\lib\libmpfr.a
make -j 4
make install
cd ..
if [ ! -f libs/lib/libsymengine.a ]; then
    cp libs/lib64/libsymengine.a libs/lib/
fi