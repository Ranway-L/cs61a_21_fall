; (define (over-or-under num1 num2)
;   'YOUR-CODE-HERE
;   (if (< num1  num2)
;       -1
;       (if (= num1 num2)
;           0
;           1))
; )
(define (over-or-under num1 num2)
  'YOUR-CODE-HERE
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0)
    ((> num1 num2) 1)))

(define (make-adder num)
  'YOUR-CODE-HERE
  (lambda (inc) (+ num inc))
)

(define (composed f g)
  'YOUR-CODE-HERE
  (lambda (x) (f (g x)) )
)

(define lst
  (cons (cons 1 nil) (cons 2 (cons (cons 3 (cons 4 nil))(cons 5 nil))))
    ; (list
    ;       (cons 1 nil) 
    ;       2 
    ;       (cons 3 (cons 4 nil))
    ;       5)
)

(define (remove item lst)
  'YOUR-CODE-HERE
  
)