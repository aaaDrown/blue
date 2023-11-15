package main

import (
	"blue/entity"
	"blue/initialize"
	"github.com/gin-gonic/gin"
	"net/http"
	"os"
)

// 跨域访问：cross  origin resource share
func CrosHandler() gin.HandlerFunc {
	return func(context *gin.Context) {
		method := context.Request.Method
		context.Writer.Header().Set("Access-Control-Allow-Origin", "*")
		context.Header("Access-Control-Allow-Origin", "*") // 设置允许访问所有域
		context.Header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT, DELETE,UPDATE")
		context.Header("Access-Control-Allow-Headers", "Authorization, Content-Length, X-CSRF-Token, Token,session,X_Requested_With,Accept, Origin, Host, Connection, Accept-Encoding, Accept-Language,DNT, X-CustomHeader, Keep-Alive, User-Agent, X-Requested-With, If-Modified-Since, Cache-Control, Content-Type, Pragma,token,openid,opentoken")
		context.Header("Access-Control-Expose-Headers", "Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers,Cache-Control,Content-Language,Content-Type,Expires,Last-Modified,Pragma,FooBar")
		context.Header("Access-Control-Max-Age", "172800")
		context.Header("Access-Control-Allow-Credentials", "false")
		context.Set("content-type", "application/json")

		if method == "OPTIONS" {
			context.JSON(http.StatusOK, entity.Response{StatusCode: 0, StatusMsg: "Options Request!"})
		}

		//处理请求
		context.Next()
	}
}

func main() {
	err := initialize.InitDB()
	if err != nil {
		os.Exit(-1)
	}
	err = initialize.InitRedis()
	if err != nil {
		os.Exit(-1)
	}
	r := gin.Default()

	r.Use(CrosHandler())
	initRouter(r)

	r.Run("localhost:8080") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
