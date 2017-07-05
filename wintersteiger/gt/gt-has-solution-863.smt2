(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.4260848784858153326382534942240454256534576416015625p0 {- 1918915699976921 0 (-1.42608)}
; Y = -1.751041322530174415561532441643066704273223876953125p-434 {- 3382389420286738 -434 (-3.9471e-131)}
; -1.4260848784858153326382534942240454256534576416015625p0 > -1.751041322530174415561532441643066704273223876953125p-434 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111111111 #b0110110100010011111001100000101001101010101011011001)))
(assert (= y (fp #b1 #b01001001101 #b1100000001000100001111100111111000110110001100010010)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
