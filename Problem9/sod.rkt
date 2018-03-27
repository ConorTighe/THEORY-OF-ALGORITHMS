#lang racket

(display "\nProblem 9 - Sod2 - G00314417\n")

(define x (list 0 0 0 0 1 1 1 1))
(define y (list 0 0 1 1 0 0 1 1))
(define z (list 0 1 0 1 0 1 0 1))

(define (sod2 x y z ) ; function signiture
  (if (null? x)(null? y)(null? z)) ;check if x y z are empty
      '() ; return null if so
      (if (not (= (length x)(length y)(length z))) ; check if lists x y z are not equal
          '() ; return null if they arnt
          (map (lambda (x y z); Map x y and z list, pass lists with lambda
                 (if (odd? (+ x y z) ) 1 0)) x y z))) ; sum x y and z elements, if result is odd place a 1 in the corrisponding element position of created list, else place a 0, then return list

(display "\nList x: \n")
(display x)
(display "\nList y: \n")
(display y)
(display "\nList z: \n")
(display z)
(display "\nResults: \n")
(sod2 x y z) ; Pass the lists to our function

(define testx (list 1 1 0 0 0 0 1 1))
(define testy (list 1 0 1 1 0 0 1 0))
(define testz (list 1 1 0 1 0 1 0 1))

(display "\nTest list x: \n")
(display testx)
(display "\nTest list y: \n")
(display testy)
(display "\nTest list z: \n")
(display testz)
(display "\nResults: \n")
(sod2 testx testy testz) ; Pass the lists to our function