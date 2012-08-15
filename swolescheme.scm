(define bmr 
 (lambda (gender weight height age metric)
  (if (not metric)
   (if (equal? gender 'male)
    (- (+ 66 (* 6.23 weight) (* 12.7 height)) (* 6.8 age))
    (- (+ 655 (* 4.35 weight) (* 4.7 height)) (* 4.7 age)))
   (if (equal? gender 'male)
    (- (+ 66 (* 13.7 weight) (* 5 height)) (* 6.8 age))
    (- (+ 655 (* 9.6 weight) (* 1.8 height)) (* 4.7 age))))))

(bmr 'male 50 50 50 #f)