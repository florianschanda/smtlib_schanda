(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.363159108421923892962013269425369799137115478515625p404 {+ 1635523225365178 404 (5.63203e+121)}
; 1.363159108421923892962013269425369799137115478515625p404 | == 1.363159108421923892962013269425369799137115478515625p404
; [HW: 1.363159108421923892962013269425369799137115478515625p404] 

; mpf : + 1635523225365178 404
; mpfd: + 1635523225365178 404 (5.63203e+121) class: Pos. norm. non-zero
; hwf : + 1635523225365178 404 (5.63203e+121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10110010011 #b0101110011110111111111101100110111101010101010111010)))
(assert (= r (fp #b0 #b10110010011 #b0101110011110111111111101100110111101010101010111010)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
