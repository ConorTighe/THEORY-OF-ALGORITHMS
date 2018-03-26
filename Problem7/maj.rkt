#lang racket

(define (maj? 1st 2nd 3rd)
  (if (for/or ([t (list 1st 2nd 3rd)]) (null? t)) ; check if passed lists are empty
      null ; if so return null
      (maj?-check 1st 2nd 3rd))) ; else pass to maj-check to compare elements

(define (maj?-check 1st 2nd 3rd)
  (define check-for-zero ; define recursion starting point
    (if (or (= 0 (+ (car 1st) (car 2nd))) ; does list 1 and 2 sum to 0
            (= 0 (+ (car 1st) (car 3rd))) ; does list 1 and 3 sum to 0
            (= 0 (+ (car 2nd) (car 3rd)))) ; does list 2 and 3 sum to 0
        0 ; if so return 0 anything else return 1
        1))
  (cons ; combine the results of the following into a list
   check-for-zero ;  call the function defined above to calc results
   (maj? (cdr 1st) (cdr 2nd) (cdr 3rd)))) ; continue recursion on the next cdr element of the list

(define example1 (list 0 0 0 0 1 1 1 1)) ; Create first list from problem sheet
(define example2 (list 0 0 1 1 0 0 1 1)) ; create second list from problem sheet
(define example3 (list 0 1 0 1 0 1 0 1)) ; create third list from problem sheet

(display example1); diplay list 1
(display "\n")
(display example2); display list 2
(display "\n")
(display example3); display list 3
(display "\nMajority example values stored in a new list:\n")
(maj? example1 example2 example3) ; pass lists to our function

(display "\n")

; My Test Case Values:
(define test1 (list 1 0 0 0 1 1 0 1)) ; Create first test list
(define test2 (list 0 1 0 1 1 0 1 1)) ; create second test list 
(define test3 (list 0 0 1 1 1 1 0 1)) ; create third test list

(display test1); diplay list 1
(display "\n")
(display test2); display list 2
(display "\n")
(display test3); display list 3
(display "\nMajority test values stored in a new list:\n")
(maj? test1 test2 test3) ; pass lists to our function