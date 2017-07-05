(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.172068324486037482756728422828018665313720703125p-50 {- 774926842037584 -50 (-1.04101e-015)}
; Y = 1.9081967003482376288303612454910762608051300048828125p69 {+ 4090154321267437 69 (1.1264e+021)}
; -1.172068324486037482756728422828018665313720703125p-50 % 1.9081967003482376288303612454910762608051300048828125p69 == -1.172068324486037482756728422828018665313720703125p-50
; [HW: -1.172068324486037482756728422828018665313720703125p-50] 

; mpf : - 774926842037584 -50
; mpfd: - 774926842037584 -50 (-1.04101e-015) class: Neg. norm. non-zero
; hwf : - 774926842037584 -50 (-1.04101e-015) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01111001101 #b0010110000001100101010110111001001011000010101010000)))
(assert (= y (fp #b0 #b10001000100 #b1110100001111111100101000011011001010100101011101101)))
(assert (= r (fp #b1 #b01111001101 #x2c0cab7258550)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
