#lang racket
;32191818 박주은 

; Q1. summation of two largest number among three input numbers
(define (sum_of_two a b c)
  (if (>= a b)
      (if (>= b c)
          (+ a b)
          (+ a c))
      (if (>= a c)
          (+ b a)
          (+ b c))))

(sum_of_two 100 10 1) ;110
(sum_of_two 50 100 30) ;150

; Q2. caculating fibonacci n number
(define (fibonacci n)
  (if (= n 1)
      1
      (if (= n 0)
          0
          (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
          ))
  )
(fibonacci 5)

; Q3. calculating summation from a to b (a < b)
(define (sum_a_to_b a b)
  (if (= b a)
      a
      (+ b (sum_a_to_b a (- b 1)))
      )
  )
(sum_a_to_b 3 7)

; Q4. translating binary digit input to decimal number

(define (b2d n)
  (if (= n 0)
      n
      (+ (modulo n 10) (* 2 (b2d (quotient n 10))))))

(b2d 1011)
(b2d 10)
  