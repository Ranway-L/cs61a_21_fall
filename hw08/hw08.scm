(define (my-filter func lst) 
    (cond 
        ((null? lst)
            nil)
        ((func (car lst))
              (cons (car lst) (my-filter func (cdr lst))))
        (else (my-filter func (cdr lst)))

    )
)

(define (interleave s1 s2) 
    (cond
        ((null? s1)
            s2)
        ((null? s2)
            s1)
        (else (cons (car s1) (interleave s2 (cdr s1))))
    )
)

(define (accumulate merger start n term)
    (if (= n 1)
        (merger (term n) start)
        (merger (term n) (accumulate merger start (- n 1) term))
    )  
)

(define (no-repeats lst) 
    (
    cond 
        ((null? lst)
            nil)
        (else 
              (cons (car lst)
                    (no-repeats (my-filter (lambda (x) (not(= x (car lst) ))) lst  )))
        )
    )
)
