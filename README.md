# cramfsToolsForArm
针对ARM32位、64位架构的cramfs制作与解压工具

源码 forkd from https://sourceforge.net/projects/cramfs/

在源码的基础上针对arm架构做了相应的修改

## arm架构编译
在lib目录下提供对应的HOST的zlib动态库，然后
make HOST=arm-himix200-linux clean;make HOST=arm-himix200-linux

当HOST未指定时，默认编译基于x86_64架构的可执行文件

