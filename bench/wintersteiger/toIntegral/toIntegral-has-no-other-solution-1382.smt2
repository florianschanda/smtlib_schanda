(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.560380337607370382357885318924672901630401611328125 598 {+ 2523728679634306 598 (1.61871e+180)}
; 1.560380337607370382357885318924672901630401611328125 598 I == 1.560380337607370382357885318924672901630401611328125 598
; [HW: 1.560380337607370382357885318924672901630401611328125 598] 

; mpf : + 2523728679634306 598
; mpfd: + 2523728679634306 598 (1.61871e+180) class: Pos. norm. non-zero
; hwf : + 2523728679634306 598 (1.61871e+180) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001010101 #b1000111101110101000101011111011101011000010110000010)))
(assert (= r (fp #b0 #b11001010101 #b1000111101110101000101011111011101011000010110000010)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
