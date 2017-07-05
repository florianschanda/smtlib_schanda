(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0952020037583409806103418304701335728168487548828125 364 {+ 428751708650989 364 (4.11541e+109)}
; 1.0952020037583409806103418304701335728168487548828125 364 I == 1.0952020037583409806103418304701335728168487548828125 364
; [HW: 1.0952020037583409806103418304701335728168487548828125 364] 

; mpf : + 428751708650989 364
; mpfd: + 428751708650989 364 (4.11541e+109) class: Pos. norm. non-zero
; hwf : + 428751708650989 364 (4.11541e+109) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101101011 #b0001100001011111001010001001010010100111110111101101)))
(assert (= r (fp #b0 #b10101101011 #b0001100001011111001010001001010010100111110111101101)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
