set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(DEBARCH arm64)
set(ZENOHC_CUSTOM_TARGET aarch64-unknown-linux-musl)
set(ZENOHC_CARGO_FLAGS "--config=target.aarch64-unknown-linux-musl.linker=\"aarch64-linux-musl-gcc\"")
set(CMAKE_C_COMPILER aarch64-linux-musl-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-musl-g++)