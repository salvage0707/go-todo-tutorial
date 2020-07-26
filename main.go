package main

import (
	"github.com/gin-gonic/gin"

	routes "github.com/salvage0707/todo/server"
)

func main() {
	r := gin.Default()

	routes.Init(r)

	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
