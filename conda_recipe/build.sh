#!/bin/sh

if [[ "${target_platform}" == linux-* ]] ; then
    export LDFLAGS="-lrt ${LDFLAGS}"
fi
export CARGO_TARGET_DIR=$SRC_DIR/target

mkdir build && cd build

cmake \
      ${CMAKE_ARGS} \
      -DCMAKE_BUILD_TYPE=Release \
      -DBUILD_SHARED_LIBS:BOOL=ON \
      -DZENOHC_INSTALL_STATIC_LIBRARY:BOOL=OFF \
      -DZENOHC_LIB_STATIC:BOOL=OFF \
      -DZENOHC_CARGO_FLAGS:STRING="--locked" \
      -DBUILD_TESTING:BOOL=FALSE \
      $SRC_DIR

VERBOSE=1 cmake --build .
cmake --install .
