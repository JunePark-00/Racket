#lang racket
;32191818 박주은

(define n1 (cons 1 (cons null null)))
(define n3 (cons 3 (cons null null)))
(define n2 (cons 2 (cons n1 n3)))
(define n5 (cons 5 (cons null null)))
(define n6 (cons 6 (cons n5 null)))
(define root (cons 4 (cons n2 n6)))
root

(define (search x node)
  (if (eq? node null)
      #f
  (cond
    [(= x (car node))
     #t]
    [(< x (car node)) (search x (car (cdr node)))]
    [(< (car node) x) (search x (cdr (cdr node)))]
  )
  )
 )

(search 3 root)
(search 5.5 root)