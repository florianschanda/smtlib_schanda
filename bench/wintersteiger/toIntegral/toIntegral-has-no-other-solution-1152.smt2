(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7047801545485976593141685953014530241489410400390625 80 {+ 3174047641403185 80 (2.06095e+024)}
; 1.7047801545485976593141685953014530241489410400390625 80 I == 1.7047801545485976593141685953014530241489410400390625 80
; [HW: 1.7047801545485976593141685953014530241489410400390625 80] 

; mpf : + 3174047641403185 80
; mpfd: + 3174047641403185 80 (2.06095e+024) class: Pos. norm. non-zero
; hwf : + 3174047641403185 80 (2.06095e+024) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001111 #b1011010001101100011110001110001010100111111100110001)))
(assert (= r (fp #b0 #b10001001111 #b1011010001101100011110001110001010100111111100110001)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
