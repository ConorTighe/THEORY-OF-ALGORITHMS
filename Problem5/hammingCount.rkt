#lang racket

(display "Problem 5 - THEORY OF ALGORITHMS - G00314417 \n")

(define (hamming-weight myList) ; define signiture, pass list
  (display myList)(display "\n") ; display passed list and move to new line
      (countElements myList)) ; count non-0 elements

(define (countElements lst) ; define function signiture, pass list
  (let counting ((lst lst) (n 0)) ; loop through list, set n to 0
    (if (null? lst) ; is list empty?
        n ; then return 0
        (counting (cdr lst) ; get 2nd value
                  (if (not (eq? 0 (car lst))) ; if 1st[n] is not 0
                      (+ n 1) ; add 1 to count
                      n))))) ; return 0

(define ExampleList (list 1 0 1 0 1 1 1 0)) ; create list from problem sheet
(hamming-weight ExampleList) ; pass list to hamming weight function