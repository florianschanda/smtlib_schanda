(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.49426319760226977706452089478261768817901611328125p282 {- 2225963552544532 282 (-1.16114e+085)}
; Y = -zero {- 0 -1023 (-0)}
; -1.49426319760226977706452089478261768817901611328125p282 < -zero == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10100011001 #b0111111010001000000010000110110101010001011100010100)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
