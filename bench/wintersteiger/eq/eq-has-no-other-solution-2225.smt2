(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4458212289681811046904158502002246677875518798828125p-521 {- 2007800320654957 -521 (-2.10614e-157)}
; Y = -1.9024015483252514346901307362713851034641265869140625p-360 {- 4064055276776161 -360 (-8.10035e-109)}
; -1.4458212289681811046904158502002246677875518798828125p-521 = -1.9024015483252514346901307362713851034641265869140625p-360 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00111110110 #b0111001000100001010101110000111001000111111001101101)))
(assert (= y (fp #b1 #b01010010111 #b1110011100000011110010011011000111101010101011100001)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
