call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\Tools\VsMSBuildCmd.bat"

mkdir build
cd build

set CMAKE_PREFIX_PATH=c:\xmrigCC-deps\msvc2017\libuv\x64\;c:\xmrigCC-deps\msvc2017\libmicrohttpd\x64\;c:\xmrigCC-deps\msvc2017\openssl\x64\
cmake .. -G "Visual Studio 15 2017 Win64" -T v141,host=x64 -DBOOST_ROOT=C:\local\boost_1_67_0

msbuild xmrig.sln /p:Configuration=Release
