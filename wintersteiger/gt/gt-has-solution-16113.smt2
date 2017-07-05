(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.0093100144611348856216181957279331982135772705078125p-166 {+ 41928577657981 -166 (1.07906e-050)}
; Y = 1.54494022217280591036114856251515448093414306640625p630 {+ 2454192581516644 630 (6.88349e+189)}
; 1.0093100144611348856216181957279331982135772705078125p-166 > 1.54494022217280591036114856251515448093414306640625p630 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101011001 #b0000001001100010001001000001111110100010110001111101)))
(assert (= y (fp #b0 #b11001110101 #b1000101110000001001100111101000010000001110101100100)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
