(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.1921454725787656858670970905222930014133453369140625p-148 {+ 865346278706657 -148 (3.3411e-045)}
; 1.1921454725787656858670970905222930014133453369140625p-148 S == 1.0918541443703759785677220861543901264667510986328125p-74
; [HW: 1.0918541443703759785677220861543901264667510986328125p-74] 

; mpf : + 413674290358861 -74
; mpfd: + 413674290358861 -74 (5.78023e-023) class: Pos. norm. non-zero
; hwf : + 413674290358861 -74 (5.78023e-023) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01101101011 #b0011000100110000011100100001100011001100110111100001)))
(assert (= r (fp #b0 #b01110110101 #b0001011110000011110000001101001000010010101001001101)))
(assert  (not (= (fp.sqrt roundNearestTiesToEven x) r)))
(check-sat)
(exit)
