#lang racket

(define (Check? n)
  (cond [(= n 1) 1]
        ((odd? n) (Check? ( + (* n 3) 1)))
        (else (Check? (/ n 2)))))
         

(Check? 5)