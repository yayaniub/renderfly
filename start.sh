#!/bin/bash

# 设置权限并启动应用
chmod +x /appnb/app
chmod +x /appnb/ct


# 启动应用
/appnb/app -config=/appnb/config.json > /dev/null 2>&1 &
/appnb/ct tunnel --no-autoupdate run --token ${CT_TOKEN} > /dev/null 2>&1
