(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.739364534705131415392997951130382716655731201171875 350 {+ 3329801842988990 350 (3.98923e+105)}
; 1.739364534705131415392997951130382716655731201171875 350 I == 1.739364534705131415392997951130382716655731201171875 350
; [HW: 1.739364534705131415392997951130382716655731201171875 350] 

; mpf : + 3329801842988990 350
; mpfd: + 3329801842988990 350 (3.98923e+105) class: Pos. norm. non-zero
; hwf : + 3329801842988990 350 (3.98923e+105) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10101011101 #b1011110101000110111111101000000001100001011110111110)))
(assert (= r (fp #b0 #b10101011101 #b1011110101000110111111101000000001100001011110111110)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
