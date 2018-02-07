#lang racket

(display "Problem 3 - THEORY OF ALGORITHMS - G00314417 \n")

(define (lcycle LIST); Pass list in function signiture 
  (if (null? LIST); Check if LIST null
      '()
      (append (cdr LIST) ; return second elemtent in list and join to below
              (cons (car LIST); gets start of list check if its valid and then joins to end
                    '()))))

; Method for removing last value of list
(define (remove-last LIST)
    (if (null? (cdr LIST))
        '()
        (cons (car LIST) (remove-last (cdr LIST)))))

(define (rcycle LIST); Pass list in function signiture 
  (if (null? LIST); Check if LIST null
      '()
      (append (cons (last LIST) ; return last elemtent in list and join to below
              (remove-last LIST); remove last from list then join it to the start
                    ))))

;Test the values from the problem sheet
(display "Test values: \n")
(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))

; Create random list
(define (randomlist n mx)
  (cond
    [(= n 0) empty]
    [else
     (cons (+ 1 (random mx))
           (randomlist (- n 1) mx))]))

(define randList (randomlist 5 10))
(display "Random values: \n")
(display randList)
(display "\nCycle left: \n")
(lcycle randList)
(display "Cycle right: \n")
(rcycle randList)