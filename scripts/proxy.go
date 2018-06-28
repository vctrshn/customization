//!go run
package main

import (
	"fmt"
	"log"
	"net/http"
	"strings"

	"github.com/elazarl/goproxy"
)

// default
//    GET clusterrunner.pod.box.net:43000/v1/build/1
// options:
//    --print-headers
//    --print-req-headers
//    --print-resp-headers
//    --print-req-body
//    --print-resp-body
//    --json
//    --filter
//	  path
func main() {
	printReqHeaders := true
	printRespHeaders := true
	// printReqBody := true
	// printRespBody := true
	proxy := goproxy.NewProxyHttpServer()

	proxy.OnResponse().DoFunc(func(resp *http.Response, ctx *goproxy.ProxyCtx) *http.Response {

		// Print request stuff
		req := ctx.Req
		fmt.Printf("%s %s %d\n", req.Method, req.URL.Path, resp.StatusCode)
		if printReqHeaders {
			for name, values := range req.Header {
				fmt.Println("\t" + name + ": " + strings.Join(values, ", "))
			}
		}

		// Print response stuff
		fmt.Println("\t<----")

		if printRespHeaders {
			for name, values := range resp.Header {
				fmt.Println("\t" + name + ": " + strings.Join(values, ", "))
			}
		}

		fmt.Printf("\n\n")

		// intercept := (ctx.Req.Method == "GET" &&
		// 	strings.HasPrefix(ctx.Req.URL.Path, "/job/Shell") &&
		// 	strings.HasSuffix(ctx.Req.URL.Path, "/api/python") &&
		// 	rand.Intn(5) == 0)
		// if intercept {
		// 	fmt.Println(" intercepted!")
		// } else {
		// 	fmt.Println()
		// }

		// if intercept {
		// 	resp.Body.Close()
		// 	return goproxy.NewResponse(
		// 		ctx.Req, "text/plain", 500, "You got intercepted!")
		// }
		return resp
	})
	log.Fatal(http.ListenAndServe(":8080", proxy))
}
