(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.118019634009386198414404134382493793964385986328125p468 {- 531513179747074 468 (-8.52094e+140)}
; Y = -1.0376642800180768677620335438405163586139678955078125p-392 {- 169624837454589 -392 (-1.02872e-118)}
; -1.118019634009386198414404134382493793964385986328125p468 < -1.0376642800180768677620335438405163586139678955078125p-392 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111010011 #b0001111000110110100010001110010001011011001100000010)))
(assert (= y (fp #b1 #b01001110111 #b0000100110100100010111011100001011100111101011111101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
