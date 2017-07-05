(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.5517559160224345671252876854850910604000091552734375p-506 {- 2484887737798103 -506 (-7.40706e-153)}
; Y = -1.5551642679762889276418036388349719345569610595703125p-279 {- 2500237590387429 -279 (-1.60106e-084)}
; -1.5517559160224345671252876854850910604000091552734375p-506 / -1.5551642679762889276418036388349719345569610595703125p-279 == 1.995616730625775492313778158859349787235260009765625p-228
; [HW: 1.995616730625775492313778158859349787235260009765625p-228] 

; mpf : + 4483859137050074 -228
; mpfd: + 4483859137050074 -228 (4.62635e-069) class: Pos. norm. non-zero
; hwf : + 4483859137050074 -228 (4.62635e-069) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01000000101 #b1000110100111111111000000010111010110000110111010111)))
(assert (= y (fp #b1 #b01011101000 #b1000111000011111001111101101011011011101101011100101)))
(assert (= r (fp #b0 #b01100011011 #b1111111011100000101111001111000101100011010111011010)))
(assert  (not (= (fp.div roundTowardZero x y) r)))
(check-sat)
(exit)
