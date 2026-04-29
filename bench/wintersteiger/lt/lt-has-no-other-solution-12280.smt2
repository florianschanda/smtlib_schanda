(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.624172031727050491412001065327785909175872802734375p-151 {+ 2811020929501030 -151 (5.68987e-046)}
; Y = 1.6452247270410567114851119185914285480976104736328125p-929 {+ 2905833840272333 -929 (3.62543e-280)}
; 1.624172031727050491412001065327785909175872802734375p-151 < 1.6452247270410567114851119185914285480976104736328125p-929 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01101101000 #b1001111111001001101111001111111101011000011101100110)))
(assert (= y (fp #b0 #b00001011110 #b1010010100101101011100101001110100110110001111001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
