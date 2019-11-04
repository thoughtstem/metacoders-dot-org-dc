#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib)

(define (demo-thing . content)
  (div 
    style: (properties background-color: "red")
    content))

(define (point-of-sale)
  (list
    (h1 "HI, buy stuff!")
    (button-primary "Buy")
    (demo-thing
      (h2 "I am a div"))))

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
            (point-of-sale))

          

          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))
