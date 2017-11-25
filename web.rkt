#lang racket

(require net/http-client)
(require net/url)
(require json)

(define link (string->url "https://api.github.com/repos/meows/kartik"))

(define a (future (http-sendrecv link)))