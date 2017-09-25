#!/usr/bin/env bash

# 下载相应的docker images
./pull.sh
./pull2.sh
# 更新RPM包
yum update