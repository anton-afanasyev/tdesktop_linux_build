## Configure
1. Edit `build_deps.sh` and `build_tdesktop.sh` setting `$MAKE_THREADS_CNT` to
the number of threas comfortable for you.
2. Edit `build_tdesktop.sh` setting `$TDESKTOP_API_ID` and `$TDESKTOP_API_HASH`
to your personal credentials obtained here: https://core.telegram.org/api/obtaining_api_id.
One can skip this step using default hardcoded credentials for test purposes but facing
issues with Telegram app login.

## Build

Build: `docker build -t tdesktop_build .`
Run temporary container and copy binary:
```
id = $(docker create tdesktop_build)
docker cp $id:/root/TBuild/tdesktop/out/Release/bin/Telegram Telegram
docker rm -v $id
```
Run container to work with Telegram Desktop build:
`docker run -it tdesktop_build`
