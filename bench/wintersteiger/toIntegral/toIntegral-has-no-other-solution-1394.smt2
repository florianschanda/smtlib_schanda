(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.562292940434784949133018017164431512355804443359375 728 {- 2532342277015158 728 (-2.20597e+219)}
; -1.562292940434784949133018017164431512355804443359375 728 I == -1.562292940434784949133018017164431512355804443359375 728
; [HW: -1.562292940434784949133018017164431512355804443359375 728] 

; mpf : - 2532342277015158 728
; mpfd: - 2532342277015158 728 (-2.20597e+219) class: Neg. norm. non-zero
; hwf : - 2532342277015158 728 (-2.20597e+219) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11011010111 #b1000111111110010011011100001110111110000011001110110)))
(assert (= r (fp #b1 #b11011010111 #b1000111111110010011011100001110111110000011001110110)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
