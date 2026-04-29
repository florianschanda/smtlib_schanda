(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9025411480092413452069877166650258004665374755859375p-879 {+ 4064683977860959 -879 (4.72028e-265)}
; Y = -1.7853876953158949181243997372803278267383575439453125p-892 {- 3537071731966037 -892 (-5.40725e-269)}
; 1.9025411480092413452069877166650258004665374755859375p-879 > -1.7853876953158949181243997372803278267383575439453125p-892 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010010000 #b1110011100001100111011111100100111111110011101011111)))
(assert (= y (fp #b1 #b00010000011 #b1100100100001111001010110000001000010000000001010101)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
