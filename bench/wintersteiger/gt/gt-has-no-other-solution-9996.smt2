(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.801940219776107188209834930603392422199249267578125p-72 {- 3611617674957090 -72 (-3.81576e-022)}
; Y = -1.4223956193876834408484910454717464745044708251953125p-773 {- 1902300754077301 -773 (-2.86308e-233)}
; -1.801940219776107188209834930603392422199249267578125p-72 > -1.4223956193876834408484910454717464745044708251953125p-773 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01110110111 #b1100110101001011111101000100100101001001000100100010)))
(assert (= y (fp #b1 #b00011111010 #b0110110000100010000111101000101100111110011001110101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
