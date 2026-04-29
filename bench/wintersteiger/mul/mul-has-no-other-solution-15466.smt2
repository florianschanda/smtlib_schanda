(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2382596865544339692633002414368093013763427734375p-888 {- 1073026235583960 -888 (-6.00034e-268)}
; Y = 1.29211217809964562519553510355763137340545654296875p-483 {+ 1315556296439948 -483 (5.17383e-146)}
; -1.2382596865544339692633002414368093013763427734375p-888 * 1.29211217809964562519553510355763137340545654296875p-483 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010000111 #b0011110011111110100101100011100110110100110111011000)))
(assert (= y (fp #b0 #b01000011100 #b0100101011000111110111010001101110110011100010001100)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
