(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0740852543997354562321788762346841394901275634765625p-661 {- 333650324108297 -661 (-1.12257e-199)}
; Y = 1.5733009310140866343630250412388704717159271240234375p-308 {+ 2581917859286199 -308 (3.01698e-093)}
; -1.0740852543997354562321788762346841394901275634765625p-661 m 1.5733009310140866343630250412388704717159271240234375p-308 == -1.0740852543997354562321788762346841394901275634765625p-661
; [HW: -1.0740852543997354562321788762346841394901275634765625p-661] 

; mpf : - 333650324108297 -661
; mpfd: - 333650324108297 -661 (-1.12257e-199) class: Neg. norm. non-zero
; hwf : - 333650324108297 -661 (-1.12257e-199) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00101101010 #b0001001011110111010000000101000011000011010000001001)))
(assert (= y (fp #b0 #b01011001011 #b1001001011000011110110011000110101111000110010110111)))
(assert (= r (fp #b1 #b00101101010 #b0001001011110111010000000101000011000011010000001001)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
