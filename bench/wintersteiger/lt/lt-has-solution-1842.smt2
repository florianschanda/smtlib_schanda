(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8430975054604339380404098847066052258014678955078125p-150 {- 3796973611428605 -150 (-1.29136e-045)}
; Y = -1.6386446138762933433241641978383995592594146728515625p356 {- 2876199645075449 356 (-2.40527e+107)}
; -1.8430975054604339380404098847066052258014678955078125p-150 < -1.6386446138762933433241641978383995592594146728515625p356 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01101101001 #b1101011111010101001111001111010101001010101011111101)))
(assert (= y (fp #b1 #b10101100011 #b1010001101111110001101101010001001011101011111111001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
