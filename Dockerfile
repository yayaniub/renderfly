# 基础镜像
FROM debian:latest

# 设置工作目录
WORKDIR /appnb

# 复制当前目录下的所有内容到容器的工作目录
COPY ./ /appnb

# 设置启动脚本权限
RUN chmod +x /appnb/start.sh

# 执行启动脚本
CMD ["/bin/bash", "/appnb/start.sh"]
