(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.6023159041054662043990219899569638073444366455078125 543 {- 2712589681288701 543 (-4.61356e+163)}
; -1.6023159041054662043990219899569638073444366455078125 543 I == -1.6023159041054662043990219899569638073444366455078125 543
; [HW: -1.6023159041054662043990219899569638073444366455078125 543] 

; mpf : - 2712589681288701 543
; mpfd: - 2712589681288701 543 (-4.61356e+163) class: Neg. norm. non-zero
; hwf : - 2712589681288701 543 (-4.61356e+163) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000011110 #b1001101000110001011000000000010111111110010111111101)))
(assert (= r (fp #b1 #b11000011110 #b1001101000110001011000000000010111111110010111111101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
