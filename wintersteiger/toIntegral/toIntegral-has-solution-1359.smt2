(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3465581167640581217170847594388760626316070556640625 280 {- 1560759005520833 280 (-2.61592e+084)}
; -1.3465581167640581217170847594388760626316070556640625 280 I == -1.3465581167640581217170847594388760626316070556640625 280
; [HW: -1.3465581167640581217170847594388760626316070556640625 280] 

; mpf : - 1560759005520833 280
; mpfd: - 1560759005520833 280 (-2.61592e+084) class: Neg. norm. non-zero
; hwf : - 1560759005520833 280 (-2.61592e+084) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010111 #b0101100010111000000010000110000110101010001111000001)))
(assert (= r (fp #b1 #b10100010111 #b0101100010111000000010000110000110101010001111000001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
