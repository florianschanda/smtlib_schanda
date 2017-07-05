(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0573704922697440000689539374434389173984527587890625p-514 {- 258373727608081 -514 (-1.97156e-155)}
; -1.0573704922697440000689539374434389173984527587890625p-514 | == 1.0573704922697440000689539374434389173984527587890625p-514
; [HW: 1.0573704922697440000689539374434389173984527587890625p-514] 

; mpf : + 258373727608081 -514
; mpfd: + 258373727608081 -514 (1.97156e-155) class: Pos. norm. non-zero
; hwf : + 258373727608081 -514 (1.97156e-155) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111111101 #b0000111010101111110101010010010000001101110100010001)))
(assert (= r (fp #b0 #b00111111101 #b0000111010101111110101010010010000001101110100010001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
