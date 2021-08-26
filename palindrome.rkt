#lang racket
(define string (read))
(require racket/trace)
;첫 문자 빼기
(define (1st string)
  (define (1st_ list)
    (car list))
  (1st_ (string->list string))
  )

;마지막 문자 빼기
(define (Last string)
  (define (Last_ list)
    (if (eq? (cdr list) null)
        (car list)
        (Last_ (cdr list)))
    )
  (Last_ (string->list string))
  )

;첫번째와 마지막 문자가 같은지 비교
(define (Comp string)
  (if (< (string-length string) 2)
      #t
      (if (eq? (1st string) (Last string))
          #t
          #f
          )
      )
  )

;첫번째를 빼고 나머지 문자열
(define (1st_M string)
  (define (1st_m list)
    (cdr list))
  (list->string (1st_m (string->list string)))
  )

;마지막껄 뺀 문자열
(define (Last_M string)
  (define (Last_m list)
    (if (eq? (cdr list) null)
        '()
        (cons (car list) (Last_m (cdr list))))
    )
  (list->string (Last_m (string->list string)))
  )

;Palindrome 구현
(define (Palin string)
  (if (< (string-length string) 2)
      (display "This is Palindrome")
      (if (Comp string)
          (Palin (1st_M (Last_M string)))
          (display "This is not Palindrome")
         )))
(trace Comp)
(trace Palin)
(Palin string)