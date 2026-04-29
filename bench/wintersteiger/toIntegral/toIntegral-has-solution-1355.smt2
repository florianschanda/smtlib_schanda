(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.52932978593497548303048461093567311763763427734375 893 {+ 2383889426692860 893 (1.00992e+269)}
; 1.52932978593497548303048461093567311763763427734375 893 I == 1.52932978593497548303048461093567311763763427734375 893
; [HW: 1.52932978593497548303048461093567311763763427734375 893] 

; mpf : + 2383889426692860 893
; mpfd: + 2383889426692860 893 (1.00992e+269) class: Pos. norm. non-zero
; hwf : + 2383889426692860 893 (1.00992e+269) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111100 #b1000011110000010001010000010011101100011101011111100)))
(assert (= r (fp #b0 #b11101111100 #b1000011110000010001010000010011101100011101011111100)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
