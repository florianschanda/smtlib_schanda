(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8248512210110618969594042937387712299823760986328125 316 {+ 3714799651581517 316 (2.43616e+095)}
; 1.8248512210110618969594042937387712299823760986328125 316 I == 1.8248512210110618969594042937387712299823760986328125 316
; [HW: 1.8248512210110618969594042937387712299823760986328125 316] 

; mpf : + 3714799651581517 316
; mpfd: + 3714799651581517 316 (2.43616e+095) class: Pos. norm. non-zero
; hwf : + 3714799651581517 316 (2.43616e+095) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100111011 #b1101001100101001011100110001101001001110111001001101)))
(assert (= r (fp #b0 #b10100111011 #b1101001100101001011100110001101001001110111001001101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
