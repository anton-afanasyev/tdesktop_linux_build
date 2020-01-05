#!/bin/bash

TDESKTOP_API_ID=17349
TDESKTOP_API_HASH=344583e45741c457fe1862106095a5eb
MAKE_THREADS_CNT=-j8

cd ~/TBuild/tdesktop/Telegram
./configure.sh -D TDESKTOP_API_ID=$TDESKTOP_API_ID -D TDESKTOP_API_HASH=$TDESKTOP_API_HASH -D DESKTOP_APP_USE_PACKAGED=OFF
cd ../../..

cd ~/TBuild/tdesktop/out/Release
make $MAKE_THREADS_CNT
cd ../../../..

strip ~/TBuild/tdesktop/out/Release/bin/Telegram
