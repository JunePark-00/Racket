#lang racket
(require racket/trace)

; practice recursion
; factorial n = n * (n-1) * (n-2) ... * 1
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))
      )
  )
(trace factorial)
(factorial 3)

; gcd calculation
; greatest common divisor
; a b
; if (a>b) gcd (a-b, b)
; else if (b>a) gcd (a, b-a)
; else (a=b) a

(define (gcd a b)
  (if (> a b)
      (gcd (- a b) b)
      (if (> b a)
          (gcd a (- b a))
          a
          )
      )
  )
(trace gcd)
(gcd 12 30)