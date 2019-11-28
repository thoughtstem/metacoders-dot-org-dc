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
      #:sku           "sku_GG41ELVKDJ6PZc"
      #:key           "pk_test_Jd6aRCVssUu8YfSvltaT3tvU00je9fQbkA"
   ))

(define (summer-camp)
  (course-card
      #:title         "SUMMER CAMP"
      #:topic         "Point & Click Games Camp!"
      #:description   "In our Summer program, students at La Jolla will learn how to code their own whack-a-mole style games that utilize the mouse. Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? Their games will feature a point system, and students will code in-game items such that they gain or lose points when the player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
      #:age-range     "K - 2nd"
      #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
      #:meeting-dates (list "2/17/2020" "2/18/2020" "2/19/2020" "3/20/2020" "3/21/2020")
      #:start-time    "9:00 am"
      #:end-time      "12:00 pm"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         300
      #:sku           "sku_GG43XFZEQxqgmG"
      #:key           "pk_test_Jd6aRCVssUu8YfSvltaT3tvU00je9fQbkA"
   ))


(define (index)
  (page index.html
        (city-page
         #:city-name  "Washington, D.C."
         #:banner-url "https://secularstudents.org/wp-content/uploads/2019/09/US-Capitol.jpeg"
         #:school-year-courses (school-year-courses (weekend-course))
         #:summer-courses (summer-courses #:location-name "Gallaudet" (summer-camp))
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


