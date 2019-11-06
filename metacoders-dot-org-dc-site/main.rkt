#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-dc-lib)

(define (buy-button price)
  ;<!-- Load Stripe.js on your website. -->
  ;(script src:"https://js.stripe.com/v3")

  ;<!-- Create a button that your customers click to complete their purchase. Customize the styling to suit your branding. -->
  (list
   (button-primary
    style:"background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em"
    id:"checkout-button-sku_G7REBMxlyd6Oh1"
    ;role:"link"
    (~a "Buy Now for $" price))
   
   (div id:"error-message")))

#|<script>
(function() {
  var stripe = Stripe('pk_test_BZvU77rH9zfNQvab1EpKB7GK00ZxANulPE');

  var checkoutButton = document.getElementById('checkout-button-sku_G7REBMxlyd6Oh1');
  checkoutButton.addEventListener('click', function () {
    ; When the customer clicks on the button, redirect
    ; them to Checkout.
    stripe.redirectToCheckout({
      items: [{sku: 'sku_G7REBMxlyd6Oh1', quantity: 1}],

      ; Do not rely on the redirect to the successUrl for fulfilling
      ; purchases, customers may not always reach the success_url after
      ; a successful payment.
      ; Instead use one of the strategies described in
      ; https://stripe.com/docs/payments/checkout/fulfillment
      successUrl: 'https://your-website.com/success',
      cancelUrl: 'https://your-website.com/canceled',
    })
    .then(function (result) {
      if (result.error) {
        ; If `redirectToCheckout` fails due to a browser or network
        ; error, display the localized error message to your customer.
        var displayError = document.getElementById('error-message');
        displayError.textContent = result.error.message;
      }
    });
  });
})();
</script>
|#

(define (print-dates dates [s ""])   
  (if (> (length dates) 1)
      (begin (set! s (~a s (first dates) ", "))
             (print-dates (rest dates) s))
      (begin (set! s (~a s (first dates) "."))
             s)))

(define (course-card
         #:title         [title "NEW COURSE"]
         #:image-url     [image-url ""]
         #:topic         [topic "TBA"]
         #:description   [description "TBA"]
         #:age-range     [age-range "TBA"]
         #:meeting-dates [meeting-dates '("TBA")]
         #:start-time    [start-time "TBA"]
         #:end-time      [end-time "TBA"]
         #:location      [location "TBA"]
         #:address       [address "TBA"]
         #:price         [price "TBA"])
  (card
   style: (properties
           margin: 10
           height: 1000
           width:  600)
   (h1 style:(properties text-align: "center")
       title)
   (card-body
    (h3 topic)
    (h4 age-range)
    (h5 (strong "Start Date: ") (first meeting-dates) " @ " start-time)
    (card-img-top
     src: image-url
     style: (properties
             width: 550))
    (p)
    (card-text description)
    (p (strong "Times:") " from " start-time " to " end-time ".")
    (p (strong "Dates: ") (print-dates meeting-dates))
    (p (strong "Location: ") location " - " address ".")
    (buy-button price))))

(define (courses)
  (list
   (row
    (col-5
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
      #:price         185))
    (col-5
     style:
     (properties
      margin-left: 50)
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
      #:price         325)))))
   
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
            (h1 "Sign up for courses at Gallaudet!")
            (br))
            
          (div
           style: (properties
                   position: "absolute"
                   left: "50%"
                   margin-left: -600)
            (br)
            (courses)
            (point-of-sale))

          )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))
