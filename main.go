package main

import (
	"blue/initialize"
	"github.com/gin-gonic/gin"
	"net/http"
	"os"
)

//// 跨域访问：cross  origin resource share

func CrosHandler() gin.HandlerFunc {
	return func(c *gin.Context) {
		method := c.Request.Method
		c.Header("Access-Control-Allow-Origin", "*") // 可将将 * 替换为指定的域名
		c.Header("Access-Control-Allow-Methods", "*")
		//c.Header("Access-Control-Allow-Headers", "*")
		c.Header("Access-Control-Expose-Headers", "Content-Length, Access-Control-Allow-Origin, Access-Control-Allow-Headers, Cache-Control, Content-Language, Content-Type")
		c.Header("Access-Control-Allow-Credentials", "true")
		if method == "OPTIONS" {
			c.AbortWithStatus(http.StatusNoContent)
		}
		c.Next()
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
	initRouter(r)
	r.Use(CrosHandler())

	r.Run("localhost:8080") // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
