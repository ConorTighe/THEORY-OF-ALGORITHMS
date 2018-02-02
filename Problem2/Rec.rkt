#lang racket

(display "Problem 2 - THEORY OF ALGORITHMS - G00314417 \n")

(define (collatz-list? n); Set function signiture
  (cons n(cond ((= n 1) 1); Check if n = 1 
        ((odd? n) (collatz-list? ( + (* n 3) 1))); if odd multiply by 3 and add 1, continue recursion
        (else (collatz-list? (/ n 2)))))); else divide by 2 and continue recursion

(display "\nResults for 5: ")
(collatz-list? 5) ; pass 5 to our function and return list

(display "\nResults for 9: ")
(collatz-list? 9); pass 9 to our function and return list

(display "\nResults for 2: ")
(collatz-list? 2); pass 2 to our function and return list