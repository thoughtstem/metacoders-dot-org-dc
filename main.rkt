#lang racket

(require 
  website/bootstrap
  "./metacoders-dot-org-dc-site/main.rkt")

(render (pages) #:to "out")
