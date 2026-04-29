(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.40707125019955991973574782605282962322235107421875 74 {+ 1833285930711980 74 (2.65788e+022)}
; 1.40707125019955991973574782605282962322235107421875 74 I == 1.40707125019955991973574782605282962322235107421875 74
; [HW: 1.40707125019955991973574782605282962322235107421875 74] 

; mpf : + 1833285930711980 74
; mpfd: + 1833285930711980 74 (2.65788e+022) class: Pos. norm. non-zero
; hwf : + 1833285930711980 74 (2.65788e+022) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001001001 #b0110100000110101110100100100101010111111101110101100)))
(assert (= r (fp #b0 #b10001001001 #b0110100000110101110100100100101010111111101110101100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
