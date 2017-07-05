(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.4845155635448661346487142509431578218936920166015625p764 {- 2182064111435865 764 (-1.44046e+230)}
; Y = 1.766452095660400178900317769148387014865875244140625p-219 {+ 3451793372413514 -219 (2.09668e-066)}
; -1.4845155635448661346487142509431578218936920166015625p764 < 1.766452095660400178900317769148387014865875244140625p-219 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11011111011 #b0111110000001001001101100100001111010100000001011001)))
(assert (= y (fp #b0 #b01100100100 #b1100010000110110001101000101110011001111111001001010)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
