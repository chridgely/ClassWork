;Purpose:  This program takes and evaluates a postfix expression => Written by Chris Ridgely
;Input:    A postfix expression
;Output:   The evaluated answer


(define (post x)(post-helper '() x))

;Purpose:  Ultimately decides if something should be pushed onto stack or evaluated  
;Input:    A postfix expression
;Output:   Answer
(define (post-helper rsf x)
   (cond((null? x) rsf)
      (else   (cond((number? (car x)) (post-helper(cons(car x)rsf) (cdr x)))
                 (else   (operand rsf  x))) 
      )
   )
)

;Purpose:   Recurses to post-helper after using operator
;Input:     The expression with the next operator
;Output:    RSF with the last two numbers popped and the result pushed. Also what's next in the;              expression
(define (operand rsf x)
   (post-helper(cons(operand-helper rsf x)(cddr rsf)) (cdr x))
)

;Purpose:   Figures out what operator to use
;Input:     The expression with the next operator
;Output:    Returns the value of the two numbers after being evaluated
(define (operand-helper rsf x)
   (cond((equal? (car x)'+)(+ (car rsf)(cadr rsf)))
        ((equal? (car x)'-)(- (car rsf)(cadr rsf)))
        ((equal? (car x)'/)(/ (car rsf)(cadr rsf)))
        ((equal? (car x)'*)(* (car rsf)(cadr rsf)))
   )
)
