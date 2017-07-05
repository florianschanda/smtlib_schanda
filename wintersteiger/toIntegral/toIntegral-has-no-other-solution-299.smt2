(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.99469104403701447125740742194466292858123779296875 715 {+ 4479690215273868 715 (3.43813e+215)}
; 1.99469104403701447125740742194466292858123779296875 715 I == 1.99469104403701447125740742194466292858123779296875 715
; [HW: 1.99469104403701447125740742194466292858123779296875 715] 

; mpf : + 4479690215273868 715
; mpfd: + 4479690215273868 715 (3.43813e+215) class: Pos. norm. non-zero
; hwf : + 4479690215273868 715 (3.43813e+215) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001010 #b1111111010100100000100100111111111000011010110001100)))
(assert (= r (fp #b0 #b11011001010 #b1111111010100100000100100111111111000011010110001100)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
