(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1718391099543568056873255045502446591854095458984375p-150 {+ 773894551558119 -150 (8.21048e-046)}
; 1.1718391099543568056873255045502446591854095458984375p-150 S == 1.0825151777016139842402253634645603597164154052734375p-75
; [HW: 1.0825151777016139842402253634645603597164154052734375p-75] 

; mpf : + 371615323549399 -75
; mpfd: + 371615323549399 -75 (2.86539e-023) class: Pos. norm. non-zero
; hwf : + 371615323549399 -75 (2.86539e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101001 #b0010101111111101101001011101110101101101011111100111)))
(assert (= r (fp #b0 #b01110110100 #b0001010100011111101101101111010110100110111011010111)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
