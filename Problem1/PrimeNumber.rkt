#lang racket
(display "\nUSING BRUTE FORCE TO CHECK FOR PRIME NUMBERS\n")
(define i 2) ; setting range start

; Create a function for checking if a number is a prime number
(define (decide-prime? n) ; Create function signiture
  (not ; A number is prime if it fails to be divided
    (for/or [(d (in-range i n))]; When any value gives us #t for/or will return telling us its not a prime
      (= 0 (remainder n d))))) ; check if n / d is fully dividable
        
; Testing prime checking fucntion:
;(decide-prime? 2); should return #t
;(decide-prime? 4); should return #f
;(decide-prime? 3); should return #t
;(decide-prime? 37); should return #t
;(decide-prime? 22); should return #f
;(decide-prime? 101); should return #t

; Brute force check for numbers 2-101
(for [(m (in-range i 102))] ; For/List for checking each number
  (display "\n")(display m)(display " Results: ")
  (display (decide-prime? m))) ; pass current number to fucntion
