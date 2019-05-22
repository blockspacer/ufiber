#! /bin/bash
set -e

# curl -L https://dl.bintray.com/boostorg/release/1.70.0/source/boost_1_70_0.tar.gz -o boost.tar.gz
# tar -xf boost.tar.gz
# cd boost_*
# ./bootstrap.sh
#
# B2_VARIANT=$(echo $CMAKE_VARIANT | awk '{print tolower($0)}')
#
# sudo ./b2 --with-system --with-atomic --with-thread --with-date_time --with-chrono --with-context cxxstd=11 variant=$B2_VARIANT toolset=$CC install
# cd -

SOURCE_DIR=$(pwd)
cd ~
git clone --depth 1 https://github.com/microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.sh
./vcpkg install boost-asio
cd $SOURCE_DIR
