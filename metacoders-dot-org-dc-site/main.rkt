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
      #:price         185
      #:sku           "sku_G7REBMxlyd6Oh1"
      #:key           "pk_test_BZvU77rH9zfNQvab1EpKB7GK00ZxANulPE"))

(define (summer-camp)
  (course-card
      #:title         "SUMMER CAMP"
      #:topic         "Exploring 3D Worlds!"
      #:description   "The magic of turning code into an immersive 3D world is something that only coders will ever experience. In our Winter program, students at La Jolla Elementary will learn a powerful programming language for designing and customizing beautiful interactive worlds that they can walk (or fly!) through. Beginners will be surprised to find that with just a few lines of code, they are able to create places that have never existed before. Advanced students will be pleasantly surprised at how deep and subtle the art of world-building really is. In this session, students will continue to earn badges as they become more and more fluent in coding."
      #:age-range     "3rd - 6th"
      #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/vr-engine.gif"
      #:meeting-dates (list "6/22/2020" "6/23/2020" "6/24/2020" "6/25/2020" "6/26/2020")
      #:start-time    "9:00 am"
      #:end-time      "1:00 pm"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:price         325
      #:sku           "sku_GA18hKlhrjqjfj"
      #:key           "pk_test_BZvU77rH9zfNQvab1EpKB7GK00ZxANulPE"))



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
          
          (list
           (location-courses
           "Gallaudet"
           (weekend-course)
           (summer-camp))

          #;(location-courses
           "LOCATION 1"
           (summer-camp)
           (weekend-course))

          #;(location-courses
           "LOCATION 2"
           (weekend-course)))
          
          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


