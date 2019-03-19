export API=14
export NDK=/home/gz/Android/android-ndk-r14b
export SYSROOT=$NDK/platforms/android-$API/arch-arm/
export TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
export PREFIX=./output

./configure \
--prefix=$PREFIX \
--enable-static \
--enable-shared \
--enable-asm \
--enable-pic \
--enable-thread \
--enable-strip \
--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
--host=arm-linux-androideabi \
--sysroot=$SYSROOT \
--extra-cflags="-Os -fpic $ADDI_CFLAGS -march=armv7-a  -mfloat-abi=softfp -mfpu=neon" \
--extra-ldflags="$ADDI_LDFLAGS" \
$ADDITIONAL_CONFIGURE_FLAG
