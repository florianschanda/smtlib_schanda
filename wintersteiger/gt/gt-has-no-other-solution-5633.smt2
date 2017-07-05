(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8340025415544467524142646652762778103351593017578125p765 {- 3756013535370653 765 (-3.55915e+230)}
; Y = 1.471495315545315651917235300061292946338653564453125p-550 {+ 2123426127396818 -550 (3.99265e-166)}
; -1.8340025415544467524142646652762778103351593017578125p765 > 1.471495315545315651917235300061292946338653564453125p-550 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111100 #b1101010110000001001100001100100011000001110110011101)))
(assert (= y (fp #b0 #b00111011001 #b0111100010110011111010101100000001111011111111010010)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
