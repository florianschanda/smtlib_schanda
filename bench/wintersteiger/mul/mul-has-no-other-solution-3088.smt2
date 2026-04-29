(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.0077385057743004637131889467127621173858642578125p-632 {+ 34851131721544 -632 (5.65445e-191)}
; Y = -1.5418144908832898121175958294770680367946624755859375p-589 {- 2440115539245919 -589 (-7.60965e-178)}
; 1.0077385057743004637131889467127621173858642578125p-632 * -1.5418144908832898121175958294770680367946624755859375p-589 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110000111 #b0000000111111011001001101001010100111000011101001000)))
(assert (= y (fp #b1 #b00110110010 #b1000101010110100010110101011111011010111101101011111)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
