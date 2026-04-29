(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7473024508599745985293338890187442302703857421875 590 {+ 3365551039226040 590 (7.08053e+177)}
; 1.7473024508599745985293338890187442302703857421875 590 I == 1.7473024508599745985293338890187442302703857421875 590
; [HW: 1.7473024508599745985293338890187442302703857421875 590] 

; mpf : + 3365551039226040 590
; mpfd: + 3365551039226040 590 (7.08053e+177) class: Pos. norm. non-zero
; hwf : + 3365551039226040 590 (7.08053e+177) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001001101 #b1011111101001111001101101010001010101010000010111000)))
(assert (= r (fp #b0 #b11001001101 #b1011111101001111001101101010001010101010000010111000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
