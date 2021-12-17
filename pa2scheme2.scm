(define (dbl_atm atm lst)
  (cond ((null? lst)'())
    (else
     (cond ((list? lst)
         (if (list? (car lst))
             (list (append (dbl_atm atm(car lst)) (dbl_atm atm(cdr lst))))
             (append(dbl_atm atm (car lst)) (dbl_atm atm(cdr lst)))))
     (else
      (if (eq? atm lst)
           (append(cons atm '()) (cons atm '()))
           (cons lst '())))))))

(dbl_atm 'b '(a (b c a (a b)))) ; test case
(dbl_atm 'a '(a (b c a (a d)))) ; the example case