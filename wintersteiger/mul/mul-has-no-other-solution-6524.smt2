(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.821918595466225809786919853650033473968505859375p380 {- 3701592280270576 380 (-4.4867e+114)}
; Y = -1.35655613853213008468401312711648643016815185546875p-195 {- 1605786092629964 -195 (-2.7014e-059)}
; -1.821918595466225809786919853650033473968505859375p380 * -1.35655613853213008468401312711648643016815185546875p-195 == 1.2357674272927725578341551226912997663021087646484375p186
; [HW: 1.2357674272927725578341551226912997663021087646484375p186] 

; mpf : + 1061802097701831 186
; mpfd: + 1061802097701831 186 (1.21204e+056) class: Pos. norm. non-zero
; hwf : + 1061802097701831 186 (1.21204e+056) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10101111011 #b1101001001101001010000011100111110000000011011110000)))
(assert (= y (fp #b1 #b01100111100 #b0101101101000111010000110101101000101110111111001100)))
(assert (= r (fp #b0 #b10010111001 #b0011110001011011010000010000110110101111001111000111)))
(assert  (not (= (fp.mul roundTowardNegative x y) r)))
(check-sat)
(exit)
