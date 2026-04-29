(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7811053735714914569854272485827095806598663330078125 120 {+ 3517785869353661 120 (2.3675e+036)}
; 1.7811053735714914569854272485827095806598663330078125 120 I == 1.7811053735714914569854272485827095806598663330078125 120
; [HW: 1.7811053735714914569854272485827095806598663330078125 120] 

; mpf : + 3517785869353661 120
; mpfd: + 3517785869353661 120 (2.3675e+036) class: Pos. norm. non-zero
; hwf : + 3517785869353661 120 (2.3675e+036) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10001110111 #b1100011111110110100001011001001000111000001010111101)))
(assert (= r (fp #b0 #b10001110111 #b1100011111110110100001011001001000111000001010111101)))
(assert  (not (= (fp.roundToIntegral roundNearestTiesToEven x) r)))
(check-sat)
(exit)
