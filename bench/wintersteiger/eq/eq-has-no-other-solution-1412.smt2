(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.7274159659464853877608447874081321060657501220703125p-320 {- 3275990273179941 -320 (-8.0872e-097)}
; Y = 1.3772892827245524216550620622001588344573974609375p-69 {+ 1699159873089176 -69 (2.33322e-021)}
; -1.7274159659464853877608447874081321060657501220703125p-320 = 1.3772892827245524216550620622001588344573974609375p-69 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01010111111 #b1011101000110111111011101100100001010100000100100101)))
(assert (= y (fp #b0 #b01110111010 #b0110000010010110000001111100101001101110111010011000)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
