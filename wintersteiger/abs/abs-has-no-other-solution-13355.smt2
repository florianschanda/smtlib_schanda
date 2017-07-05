(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.4889237380580853109535155454068444669246673583984375p287 {+ 2201916764530983 287 (3.70238e+086)}
; 1.4889237380580853109535155454068444669246673583984375p287 | == 1.4889237380580853109535155454068444669246673583984375p287
; [HW: 1.4889237380580853109535155454068444669246673583984375p287] 

; mpf : + 2201916764530983 287
; mpfd: + 2201916764530983 287 (3.70238e+086) class: Pos. norm. non-zero
; hwf : + 2201916764530983 287 (3.70238e+086) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100011110 #b0111110100101010000110110010100100110010100100100111)))
(assert (= r (fp #b0 #b10100011110 #b0111110100101010000110110010100100110010100100100111)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
