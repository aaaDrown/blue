# 使用官方的 Golang 镜像作为基础镜像
FROM golang:latest

# 设置工作目录
WORKDIR /blue

# 将本地的代码复制到容器中
COPY . .

# 下载项目所需的依赖
RUN go mod tidy

# 暴露应用运行的端口
EXPOSE 8080

# 定义容器启动时运行的命令
CMD ["go run *.go &"]
