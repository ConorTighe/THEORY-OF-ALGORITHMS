#lang racket

(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define (chse x y z) ; function signiture
  (if (null? x)(null? y)(null? z)) ; check if lists are null
  '() ; return null
  (if (not (= (length x)(length y)(length z))) ; check if lists are equal length
      (display "ERROR: Lists NOT of equal length!") ;throw error message
      (map (lambda (x y z); Map the 3 lists and pass list structures with lambda function
             (if (= x 1) y z)) x y z))) ; check if x equals 1, if so use the y value, else use the z value

; print out x,y and z below
(display "\nList x: \n")
(display x)
(display "\nList y: \n")
(display y)
(display "\nList z: \n")
(display z)
(display "\nResuts: \n")
(chse x y z) ; Use the problem sheet lists on problem, expected result: (0 1 0 1 0 0 1 1)
