(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.08015040684310736907036698539741337299346923828125 36 {+ 360965342392212 36 (7.42274e+010)}
; 1.08015040684310736907036698539741337299346923828125 36 I == 1.08015040683676488697528839111328125 36
; [HW: 1.08015040683676488697528839111328125 36] 

; mpf : + 360965342363648 36
; mpfd: + 360965342363648 36 (7.42274e+010) class: Pos. norm. non-zero
; hwf : + 360965342363648 36 (7.42274e+010) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000100011 #b0001010010000100101111001011000000100110111110010100)))
(assert (= r (fp #b0 #b10000100011 #b0001010010000100101111001011000000100000000000000000)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
