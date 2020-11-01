rm libs -rf
mkdir -p build
cd build
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=flint -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=flint -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0  -DGMP_LIBRARIES=C:\msys64\mingw64\lib -DFLINT_LIBRARY=..\flint\lib\x64\Release -DFLINT_INCLUDE_DIR=..\flint\lib\x64\Release -DMPFR_LIBRARY=C:\msys64\mingw64\lib\libmpfr.a
#cmake .. -DBUILD_TESTS=no -DBUILD_BENCHMARKS=no -DINTEGER_CLASS=flint -DCMAKE_INSTALL_PREFIX=../libs -DBoost_INCLUDE_DIR=../boost_1_74_0  -DGMP_LIBRARY=C:\msys64\mingw64\lib\gmp.a -DGMP_INCLUDE_DIR=C:\msys64\mingw64\include -DFLINT_LIBRARY=..\flint\lib\x64\Release -DFLINT_INCLUDE_DIR=..\flint\lib\x64\Release -DMPFR_LIBRARY=C:\msys64\mingw64\lib\libmpfr.a -DMPFR_INCLUDE_DIR=C:\msys64\mingw64\include
make -j 4
make install
cd ..
if [ ! -f libs/lib/libsymengine.a ]; then
    cp libs/lib64/libsymengine.a libs/lib/
fi