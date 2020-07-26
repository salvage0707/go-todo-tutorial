package sample

import (
	"github.com/gin-gonic/gin"
)

// Controller sampleコントローラー
type Controller struct{}

// Ping pongを返す
func (pc Controller) Ping(c *gin.Context) {
	c.JSON(200, gin.H{
		"message": "pong2",
	})
}
