(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9695595001909478316548529619467444717884063720703125 603 {- 4366507803773477 603 (-6.53817e+181)}
; -1.9695595001909478316548529619467444717884063720703125 603 I == -1.9695595001909478316548529619467444717884063720703125 603
; [HW: -1.9695595001909478316548529619467444717884063720703125 603] 

; mpf : - 4366507803773477 603
; mpfd: - 4366507803773477 603 (-6.53817e+181) class: Neg. norm. non-zero
; hwf : - 4366507803773477 603 (-6.53817e+181) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011010 #b1111100000110101000011010010100011011000101000100101)))
(assert (= r (fp #b1 #b11001011010 #b1111100000110101000011010010100011011000101000100101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
