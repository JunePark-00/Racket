#lang racket
;32191818 박주은

(require racket/trace)

(define (search x S)
  (if (eq? S null)
      #f
      (if (= x (car S))
          #t
          (if (< x (car S))
              #f
              (search x (cdr S))
              )
          )
      )
  )

(define (adjoin x S)
  (if (eq? S null)
      (cons x null)
      (if (search x S)
          (cons x null)
          (if (search x S)
              S
              (if (< x (car S))
                  (cons x S)
                  (cons (car S) (adjoin x (cdr S)))
                  )
              )
          )
      )
  )
                
(define (ordered S)
(if (eq? S null)
    '()
    (adjoin (car S) (ordered (cdr S)))
    )
  )

(trace ordered)
(ordered '(9 1 3 5 7))
(ordered '(9 7 5 3 1))