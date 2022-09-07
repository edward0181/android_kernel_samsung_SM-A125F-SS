#!/bin/bash

export CROSS_COMPILE=/home/edward/toolchains/proton-clang-13-clang/bin/aarch64-linux-gnu-
export CC=/home/edward/toolchains/proton-clang-13-clang/bin/clang
export CLANG_TRIPLE=/home/edward/toolchains/proton-clang-13-clang/bin/aarch64-linux-gnu-
export ARCH=arm64
export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=r
export KBUILD_BUILD_HOST=Edward
export KBUILD_BUILD_USER="Edward0181"
export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y edward0181_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
