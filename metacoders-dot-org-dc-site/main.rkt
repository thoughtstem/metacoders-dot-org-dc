#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib
         metacoders-dot-org-lib)

; If you are creating a brand new course,
; run (generate-random-sku) to generate a unique sku id
(define/provide-course weekly-class-k-2nd-winter
  (course
      #:topic         "Awesome Animals!"
      #:sku           "sku_RKVvQvsyTPaTV0w1LjHjSA"
      #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/k-2.gif"
      #:description   "MetaCoders’ novel approach to computer science education is backed by the latest scientific research that shows learning how to code is more like learning a foreign language than learning math. Therefore, we leverage the entire field of language acquisition so that our students are ready for a future where they’ll need to speak the languages of computers fluently. We also keep the emphasis on FUN, so throughout the course students will earn badges and prizes as they expand their knowledge of computer science. During this session of Coding Club, students will be designing video games featuring animals - they'll learn how to customize the colors of & heal their animal game characters, and also avoid enemies!"
      #:grade-range   "K - 2nd"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         210
      #:discount      21
      #:start-time    "10:00am"
      #:end-time      "11:30am"
      #:meeting-dates (list "2/8/2020" "2/15/2020" "2/22/2020" "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020")
      #:status        'open
   ))
   
(define/provide-course weekly-class-3rd-6th-winter 
  (course
      #:topic         "Survival Video Game Design"
      #:sku           "sku_QSHiA5uBRTyoRaFEjGpHMg"
      #:image-url     "https://www.thoughtstem.com/img/stock-photos/survival-game-gif.gif"
      #:description   "In our Winter Saturday class, students will design & code their very own 2D survival games. Students will learn how to build critical features that make survival games like Minecraft and Fortnite fun! Students will use a powerful, typed language to code features like health bars, day-night cycles, and crafting/recipe mechanics. At the end of this course, students will be able to share their survival games with friends and family."
      #:grade-range     "3rd-6th"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         210
      #:discount      21
      #:start-time    "12:00pm"
      #:end-time      "1:30pm"
      #:meeting-dates (list "2/8/2020" "2/15/2020" "2/22/2020" "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020")
      #:status 'open
   ))

(define/provide-course weekly-class-k-2nd-spring
  (course
      #:topic         "Point & Click Games!"
      #:sku           "sku_sGmOKX5tTqP33J65v06Q"
      #:image-url     "https://www.thoughtstem.com/img/stock-photos/after-school/k2-clicker-cartoon-gif.gif"
      #:description   "In our Spring Saturday class, students will learn how to code their own whack-a-mole style games that utilize the mouse. Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? Their games will feature a point system, and students will code in-game items such that they gain or lose points when the player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
      #:grade-range     "K - 2nd"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         210
      #:start-time    "10:00am"
      #:end-time      "11:30am"
      #:meeting-dates (list "3/28/2020" "4/4/2020" "4/18/2020" "4/25/2020" "5/2/2020" "5/23/2020" "5/30/2020")
      #:status 'open
   ))
   
(define/provide-course weekly-class-3rd-6th-spring 
  (course
      #:topic         "Battle Arena Video Game Design"
      #:sku           "sku_1Y6ciJOnQm6EGJLmCQ99Q"
      #:image-url     "https://www.thoughtstem.com/img/stock-photos/after-school/battle-arena.gif"
      #:description   "In our Spring Saturday class, students will design & code their very own 2D battle arena video games. What's a battle arena game? Think Fortnite! Students will learn how to code their characters' weapons and armor, create enemies to battle, and program potions that will give their character special capabilities. At the end of this course, students will participate in a Game Jam where they'll work together to create their own unique games."
      #:grade-range     "3rd-6th"
      #:location      "Gallaudet University"
      #:address       "800 Florida Ave NE, Washington, DC 20002"
      #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
      #:price         210
      #:start-time    "12:00pm"
      #:end-time      "1:30pm"
      #:meeting-dates (list "3/28/2020" "4/4/2020" "4/18/2020" "4/25/2020" "5/2/2020" "5/23/2020" "5/30/2020")
      #:status 'open
   ))

(define/provide-camp summer-camp-clicker-k-2nd-6/15
  (camp #:topic         "Cartoon Clicker Games!"
        #:sku           "sku_0kxDDHHLRhNAoIrBPb65Q"
        #:image-url     "https://www.thoughtstem.com/img/stock-photos/after-school/k2-clicker-cartoon-gif.gif"
                        ;"https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/DSC_0603_370_200.jpg"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own whack-a-mole style games that utilize the mouse. "
                            "Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? "
                            "Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? "
                            "Their games will feature a point system, and students will code in-game items such that they gain or lose points when the "
                            "player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. "
                            "Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!")
        #:grade-range     "Entering K - 2nd"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "8:45am - 9:00am"
        #:camp-time     "9:00am - 12:00pm"
        #:lunch-time    "12:00pm - 1:00pm"
        #:pickup-time   "1:00pm - 1:15pm"
        #:meeting-dates (list "6/15/2020" "6/16/2020" "6/17/2020" "6/18/2020" "6/19/2020")
        #:status         'open
        ))

(define/provide-camp summer-camp-animal-k-2nd-6/22
  (camp #:topic         "Animal Healer Games!"
        #:sku           "sku_k56o4KvcTqiQSY3zuYCHA"
        #:image-url     "https://s3-us-west-1.amazonaws.com/ts-email-assets-and-stuff/k-2.gif"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own whack-a-mole style games that utilize the mouse. "
                            "Students will learn how to customize their game with near endless possible combinations: Are you a UFO collecting cows? "
                            "Or a kid eating up their favorite foods and avoiding their least favorites? Or a ninja nabbing fruit and not the bombs? "
                            "Their games will feature a point system, and students will code in-game items such that they gain or lose points when the "
                            "player clicks on them. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. "
                            "Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!")
        #:grade-range     "Entering K - 2nd"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "8:45am - 9:00am"
        #:camp-time     "9:00am - 12:00pm"
        #:lunch-time    "12:00pm - 1:00pm"
        #:pickup-time   "1:00pm - 1:15pm"
        #:meeting-dates (list "6/22/2020" "6/23/2020" "6/24/2020" "6/25/2020" "6/26/2020")
        #:status         'full
        ))

(define/provide-camp summer-camp-hp-3rd-6th-6/15
  (camp #:topic         "Harry Potter Adventure Games!"
        #:sku           "sku_ERox4oUnTyCX4qLWzkEKg"
        #:image-url     "https://www.thoughtstem.com/img/stock-photos/survival-game-gif.gif"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own wizard-themed video games. Using Harry Potter as "
                            "a point of inspiration, we will teach students how to craft their own adventure game inside a unique wizarding world. In addition "
                            "to learning how to code, students will also be guided in the ways of digital citizenship and how to appropriately and safely "
                            "share their fan-fictional work with the world. Students are going to love coding their own wizarding world full of mystery & magic!")
        #:grade-range     "Entering 3rd - 6th"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:discount      20
        #:check-in-time "12:45pm - 1:00pm"
        #:camp-time     "1:00pm - 4:00pm"
        #:pickup-time   "4:00pm - 4:15pm"
        #:meeting-dates (list "7/13/2020" "7/14/2020" "7/15/2020" "7/16/2020" "7/17/2020")
        #:status         'open
        ))

(define/provide-camp summer-camp-fortnite-3rd-6th-6/22
  (camp #:topic         "Fortnite Battle Games!"
        #:sku           "sku_vVevbnffTUy3VhFOIR9U9w"
        #:image-url     "https://www.thoughtstem.com/img/stock-photos/after-school/battle-arena.gif"
        #:description   (~a "In our Summer program, students at Gallaudet will learn how to code their own wizard-themed video games. Using Harry Potter as "
                            "a point of inspiration, we will teach students how to craft their own adventure game inside a unique wizarding world. In addition "
                            "to learning how to code, students will also be guided in the ways of digital citizenship and how to appropriately and safely "
                            "share their fan-fictional work with the world. Students are going to love coding their own wizarding world full of mystery & magic!")
        #:grade-range     "Entering 3rd - 6th"
        #:location      "Gallaudet University"
        #:address       "800 Florida Ave NE, Washington, DC 20002"
        #:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        #:price         300
        #:check-in-time "12:45pm - 1:00pm"
        #:camp-time     "1:00pm - 4:00pm"
        #:pickup-time   "4:00pm - 4:15pm"
        #:meeting-dates (list "6/22/2020" "6/23/2020" "6/24/2020" "6/25/2020" "6/26/2020")
        #:status         'almost-full
        ))

(define (index)
  (page index.html
        (city-page
         #:city-name  "Washington, D.C."
         #:banner-url (prefix/pathify washington-dc-banner-path)
         #:school-year-courses '() #;(list weekly-class-k-2nd-winter
                                     weekly-class-3rd-6th-winter
                                     weekly-class-k-2nd-spring)
         #:summer-camps '() #;(list summer-camp-clicker-k-2nd-6/15
                              summer-camp-animal-k-2nd-6/22
                              summer-camp-hp-3rd-6th-6/15
                              summer-camp-fortnite-3rd-6th-6/22
                              )
         
         #;#:camp-pricing #;(summer-camp-pricing-at #:location "Gallaudet University"
                                                #:am-camp-time "9am - 1pm"
                                                #:pm-camp-time "1pm - 4pm"
                                                #:full-day-time "9am - 4pm"
                                                #:am-price "370"
                                                #:pm-price "290"
                                                #:full-day-price "594")

         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


