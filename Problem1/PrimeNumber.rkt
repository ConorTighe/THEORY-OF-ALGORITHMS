#lang racket

(define i 2)

; Create a function for checking prime and then running our
; function for checking if it can not be divided
(define decide-prime (lambda(n)
  (define (prime? n)
    (not
      (for/or [(d (range 2 n))]
        (= 0 (modulo n d)))))))

(decide-prime 2)
(decide-prime 3)
(decide-prime 4)
(decide-prime 37)
(decide-prime 39)