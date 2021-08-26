#lang racket

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