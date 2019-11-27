#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib
         metacoders-dot-org-lib)

(define (weekend-course)
  (course-card
      #:title         "WEEKEND CLASS"
      #:topic         "Point & Click Games!"
      #:description   "In our Winter program, students at La Jolla will learn how to code their own whack-a-mole style games that utilize the mouse. Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? Their games will feature a point system, and students will code in-game items such that they gain or lose points when the player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
      #:age-range     "K - 2nd"
      #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
      #:meeting-dates (list "2/15/2020" "2/22/2020" "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020" "3/28/2020")
      #:start-time    "11:00 am"
      #:end-time      "12:30 pm"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         185
      #:sku           "sku_G7REBMxlyd6Oh1"
      #:key           "pk_test_BZvU77rH9zfNQvab1EpKB7GK00ZxANulPE"
   ))



(define (index)
  (page index.html
        (city-page
         #:city-name  "Washington, D.C."
         #:banner-url "https://secularstudents.org/wp-content/uploads/2019/09/US-Capitol.jpeg"
         #:locations-list (list
                           ;(location-courses
                            ;#:location-name "LOCATION 1"
                            ;#:course-1 (weekend-course))
                           (location-courses
                            #:location-name "Gallaudet"
                            #:course-1 (weekend-course)
                           ; #:course-2 (summer-camp))
                           ))
          
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


