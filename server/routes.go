package routes

import (
	"github.com/gin-gonic/gin"

	sample "github.com/salvage0707/todo/controller"
)

// Init ルーティング設定
func Init(router *gin.Engine) {
	root := router.Group("/")
	{
		sampleC := sample.Controller{}
		root.GET("/", sampleC.Ping)
	}
}
