#lang racket
(define (value kinds_of_coins)
  (cond
    [(= kinds_of_coins 1) 10]
    [(= kinds_of_coins 2) 50]
    [(= kinds_of_coins 3) 100]
    [(= kinds_of_coins 4) 500]
    [(= kinds_of_coins 5) 1000]
    [(= kinds_of_coins 6) 5000]
  )
)


(define (count total_amount kinds_of_coins)
  (if (= kinds_of_coins 0)
      0
      (if (= total_amount 0)
          1
      (if (< total_amount 0)
          0
          (+ (count (- total_amount (value kinds_of_coins)) kinds_of_coins) (count total_amount (- kinds_of_coins 1))))
  )
  )
  )

(count 10000 6)
(count 10000 5)