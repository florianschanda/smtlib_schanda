(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0894566240279226487785990684642456471920013427734375p-465 {- 402876818637975 -465 (-1.14357e-140)}
; Y = -1.43183062403179661714602843858301639556884765625p-583 {- 1944792237476768 -583 (-4.52277e-176)}
; -1.0894566240279226487785990684642456471920013427734375p-465 % -1.43183062403179661714602843858301639556884765625p-583 == -1.3749267252497219260476413182914257049560546875p-583
; [HW: -1.3749267252497219260476413182914257049560546875p-583] 

; mpf : - 1688519860125888 -583
; mpfd: - 1688519860125888 -583 (-4.34302e-176) class: Neg. norm. non-zero
; hwf : - 1688519860125888 -583 (-4.34302e-176) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000101110 #b0001011011100110101000010001101010011100010010010111)))
(assert (= y (fp #b1 #b00110111000 #b0110111010001100011100111010011110100000101110100000)))
(assert (= r (fp #b0 #b00110110011 #xd228200915c00)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
