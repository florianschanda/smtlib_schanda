(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4578812286246434215541967205354012548923492431640625p-519 {+ 2062113730613889 -519 (8.49482e-157)}
; 1.4578812286246434215541967205354012548923492431640625p-519 S == 1.707560381728648213339738504146225750446319580078125p-260
; [HW: 1.707560381728648213339738504146225750446319580078125p-260] 

; mpf : + 3186568671495266 -260
; mpfd: + 3186568671495266 -260 (9.21674e-079) class: Pos. norm. non-zero
; hwf : + 3186568671495266 -260 (9.21674e-079) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00111111000 #b0111010100110111101101000100011001100101001010000001)))
(assert (= r (fp #b0 #b01011111011 #b1011010100100010101011010101101101111000010001100010)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
