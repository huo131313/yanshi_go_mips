#源镜像
#FROM golang:latest
FROM liupeng0518/golang-1.12.5-stretch
#作者
MAINTAINER Barry "wanghongquan@inspur.com"
#设置工作目录
WORKDIR $GOPATH/src/header
#将服务器的go工程代码加入到docker容器中
ADD . $GOPATH/src/header
#go构建可执行文件
RUN go build .
#暴露端口
EXPOSE 9090
#最终运行docker的命令
ENTRYPOINT  ["./header"]