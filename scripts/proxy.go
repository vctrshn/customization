package main

import (
	"fmt"
	"log"
	"math/rand"
	"net/http"
	"strings"

	"github.com/elazarl/goproxy"
)

func main() {
	proxy := goproxy.NewProxyHttpServer()

	proxy.OnResponse().DoFunc(func(resp *http.Response, ctx *goproxy.ProxyCtx) *http.Response {

		fmt.Printf("%s %s", ctx.Req.Method, ctx.Req.URL.Path)
		intercept := (ctx.Req.Method == "GET" &&
			strings.HasPrefix(ctx.Req.URL.Path, "/job/Shell") &&
			strings.HasSuffix(ctx.Req.URL.Path, "/api/python") &&
			rand.Intn(5) == 0)
		if intercept {
			fmt.Println(" intercepted!")
		} else {
			fmt.Println()
		}

		if intercept {
			resp.Body.Close()
			return goproxy.NewResponse(
				ctx.Req, "text/plain", 500, "You got intercepted!")
		}
		return resp
	})
	log.Fatal(http.ListenAndServe(":8080", proxy))
}
