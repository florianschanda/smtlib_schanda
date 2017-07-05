(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2400306239267677721471727636526338756084442138671875p278 {- 1081001828474099 278 (-6.02242e+083)}
; Y = 1.115299021014628966241843954776413738727569580078125p85 {+ 519260628077666 85 (4.3146e+025)}
; -1.2400306239267677721471727636526338756084442138671875p278 + 1.115299021014628966241843954776413738727569580078125p85 == -1.2400306239267677721471727636526338756084442138671875p278
; [HW: -1.2400306239267677721471727636526338756084442138671875p278] 

; mpf : - 1081001828474099 278
; mpfd: - 1081001828474099 278 (-6.02242e+083) class: Neg. norm. non-zero
; hwf : - 1081001828474099 278 (-6.02242e+083) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100010101 #b0011110101110010101001011001111111001101110011110011)))
(assert (= y (fp #b0 #b10001010100 #b0001110110000100001111001001010010000100110001100010)))
(assert (= r (fp #b1 #b10100010101 #b0011110101110010101001011001111111001101110011110011)))
(assert  (not (= (fp.add roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
