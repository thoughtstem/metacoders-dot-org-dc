#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib)

(define (index)
  (page index.html
        (homepage-content
          (big-image
            "https://secularstudents.org/wp-content/uploads/2019/09/US-Capitol.jpeg"
            #:offset-y -1500
            (div
              class: "text-center"
              (img src:
                   ;Gross...
                   (pathify
                     (add-path-prefix logo-img-path)))))

          (container
            style: (properties
                     text-align: "center")
            (br)
            (h1 "Coming soon to Washington, DC!"))

          

          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))
