#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib
         metacoders-dot-org-lib)

(require website-js/components/remote)

(define (index)
  (page index.html
        (city-page-dynamic
         #:city-name  "Washington, D.C."
         #:banner-url (prefix/pathify washington-dc-banner-path)
         #:alt-tag "City of Washington, D.C. with view of capital and cherry blossom trees"

	 (remote 
	    "https://mc-social-media.s3-us-west-1.amazonaws.com/static-points-of-sale/dc.html"))))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


