#!/bin/bash

export CROSS_COMPILE=/home/edward/toolchains/proton-clang-13-clang/bin/aarch64-linux-gnu-
export CC=/home/edward/toolchains/proton-clang-13-clang/bin/clang
export CLANG_TRIPLE=/home/edward/toolchains/proton-clang-13-clang/bin/aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=s

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y edward0181_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16

cp out/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/Image
