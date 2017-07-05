(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1171298616670728431898851340520195662975311279296875 511 {- 527506001357787 511 (-7.48913e+153)}
; -1.1171298616670728431898851340520195662975311279296875 511 I == -1.1171298616670728431898851340520195662975311279296875 511
; [HW: -1.1171298616670728431898851340520195662975311279296875 511] 

; mpf : - 527506001357787 511
; mpfd: - 527506001357787 511 (-7.48913e+153) class: Neg. norm. non-zero
; hwf : - 527506001357787 511 (-7.48913e+153) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111111110 #b0001110111111100001110001111110100111110101111011011)))
(assert (= r (fp #b1 #b10111111110 #b0001110111111100001110001111110100111110101111011011)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
