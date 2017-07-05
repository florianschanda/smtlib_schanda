(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.647223464251650337786259115091525018215179443359375 503 {+ 2914835352429174 503 (4.3136e+151)}
; 1.647223464251650337786259115091525018215179443359375 503 I == 1.647223464251650337786259115091525018215179443359375 503
; [HW: 1.647223464251650337786259115091525018215179443359375 503] 

; mpf : + 2914835352429174 503
; mpfd: + 2914835352429174 503 (4.3136e+151) class: Pos. norm. non-zero
; hwf : + 2914835352429174 503 (4.3136e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110110 #b1010010110110000011011111101110000101010001001110110)))
(assert (= r (fp #b0 #b10111110110 #b1010010110110000011011111101110000101010001001110110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
