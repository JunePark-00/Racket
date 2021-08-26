#lang racket

(define rand (round (random 0 100)))
(display "Random Number: ") (display rand)
(newline)
(define (updown)
  (define val (read))
  (cond
    [(> val rand) (display "Down") (newline) (updown)]
    [(< val rand) (display "Up") (newline) (updown)]
    [else (display "Correct")])
    (newline)
)
(updown)