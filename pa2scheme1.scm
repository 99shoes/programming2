(define (palindrome list1)
  (define inverse (reverse list1))
  (if (null? list1) '() (append list1 inverse) ))


(palindrome '(1 3 a b c 3 2)) ; test case
(palindrome '(a b c))    ; the example case