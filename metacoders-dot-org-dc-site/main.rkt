#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib
         metacoders-dot-org-lib)

(define (weekend-course-k2) ;TODO: Use a course struct
  (course-card
      #:title         "WEEKEND CLASS"
      #:topic         "Point & Click Games!"
      #:description   "In our Winter program, students at Gallaudet will learn how to code their own whack-a-mole style games that utilize the mouse. Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? Their games will feature a point system, and students will code in-game items such that they gain or lose points when the player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
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

(define (summer-camp-clicker-k-2nd-7/15)
  (camp #:topic         "Cartoon Clicker Games!"
        #:sku           "sku_GG43XFZEQxqgmG"
        #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own whack-a-mole style games that utilize the mouse. "
                            "Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? "
                            "Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? "
                            "Their games will feature a point system, and students will code in-game items such that they gain or lose points when the "
                            "player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. "
                            "Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!")
        #:age-range     "Entering K - 2nd"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "8:45am - 9:00am"
        #:camp-time     "9:00am - 12:00pm"
        #:lunch-time    "12:00pm - 1:00pm"
        #:pickup-time   "1:00pm - 1:15pm"
        #:meeting-dates (list "7/15/2020" "7/16/2020" "7/17/2020" "7/18/2020" "7/19/2020")
        #:open?         #t
        ))

(define (summer-camp-animal-k-2nd-7/15)
  (camp #:topic         "Animal Healer Games!"
        #:sku           "fake_sku_1"
        #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own whack-a-mole style games that utilize the mouse. "
                            "Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? "
                            "Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? "
                            "Their games will feature a point system, and students will code in-game items such that they gain or lose points when the "
                            "player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. "
                            "Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!")
        #:age-range     "Entering K - 2nd"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "8:45am - 9:00am"
        #:camp-time     "9:00am - 12:00pm"
        #:lunch-time    "12:00pm - 1:00pm"
        #:pickup-time   "1:00pm - 1:15pm"
        #:meeting-dates (list "7/15/2020" "7/16/2020" "7/17/2020" "7/18/2020" "7/19/2020")
        #:open?         #f
        ))

(define (summer-camp-hp-3rd-6th-7/15)
  (camp #:topic         "Harry Potter Adventure Games!"
        #:sku           "fake_sku_2"
        #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own wizard-themed video games. Using Harry Potter as "
                            "a point of inspiration, we will teach students how to craft their own adventure game inside a unique wizarding world. In addition "
                            "to learning how to code, students will also be guided in the ways of digital citizenship and how to appropriately and safely "
                            "share their fan-fictional work with the world. Students are going to love coding their own wizarding world full of mystery & magic!")
        #:age-range     "Entering 3rd - 6th"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "12:45pm - 1:00pm"
        #:camp-time     "1:00pm - 4:00pm"
        #:pickup-time   "4:00pm - 4:15pm"
        #:meeting-dates (list "7/15/2020" "7/16/2020" "7/17/2020" "7/18/2020" "7/19/2020")
        #:open?         #f
        ))

(define (summer-camp-fortnite-3rd-6th-7/15)
  (camp #:topic         "Fortnite Battle Games!"
        #:sku           "fake_sku_3"
        #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own wizard-themed video games. Using Harry Potter as "
                            "a point of inspiration, we will teach students how to craft their own adventure game inside a unique wizarding world. In addition "
                            "to learning how to code, students will also be guided in the ways of digital citizenship and how to appropriately and safely "
                            "share their fan-fictional work with the world. Students are going to love coding their own wizarding world full of mystery & magic!")
        #:age-range     "Entering 3rd - 6th"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "12:45pm - 1:00pm"
        #:camp-time     "1:00pm - 4:00pm"
        #:pickup-time   "4:00pm - 4:15pm"
        #:meeting-dates (list "7/15/2020" "7/16/2020" "7/17/2020" "7/18/2020" "7/19/2020")
        #:open?         #f
        ))

(define (index)
  (page index.html
        (city-page
         #:city-name  "Washington, D.C."
         #:banner-url "https://secularstudents.org/wp-content/uploads/2019/09/US-Capitol.jpeg"
         #:school-year-courses (school-year-courses (weekend-course-k2))
         #:summer-camps (list (summer-camp-clicker-k-2nd-7/15)
                              (summer-camp-animal-k-2nd-7/15)
                              (summer-camp-hp-3rd-6th-7/15)
                              (summer-camp-fortnite-3rd-6th-7/15)
                              )
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


