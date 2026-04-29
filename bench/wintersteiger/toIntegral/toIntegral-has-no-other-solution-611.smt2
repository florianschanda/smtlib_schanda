(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3401533869548238886437729888712055981159210205078125 139 {+ 1531914666738557 139 (9.33951e+041)}
; 1.3401533869548238886437729888712055981159210205078125 139 I == 1.3401533869548238886437729888712055981159210205078125 139
; [HW: 1.3401533869548238886437729888712055981159210205078125 139] 

; mpf : + 1531914666738557 139
; mpfd: + 1531914666738557 139 (9.33951e+041) class: Pos. norm. non-zero
; hwf : + 1531914666738557 139 (9.33951e+041) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010001010 #b0101011100010100010010101101100010011000001101111101)))
(assert (= r (fp #b0 #b10010001010 #b0101011100010100010010101101100010011000001101111101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
