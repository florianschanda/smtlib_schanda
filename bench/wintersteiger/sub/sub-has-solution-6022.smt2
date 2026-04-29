(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.8361018571507246033291949061094783246517181396484375p497 {+ 3765468012307783 497 (7.51285e+149)}
; Y = -zero {- 0 -1023 (-0)}
; 1.8361018571507246033291949061094783246517181396484375p497 - -zero == 1.8361018571507246033291949061094783246517181396484375p497
; [HW: 1.8361018571507246033291949061094783246517181396484375p497] 

; mpf : + 3765468012307783 497
; mpfd: + 3765468012307783 497 (7.51285e+149) class: Pos. norm. non-zero
; hwf : + 3765468012307783 497 (7.51285e+149) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110000 #b1101011000001010110001010111010010010110010101000111)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b10111110000 #b1101011000001010110001010111010010010110010101000111)))
(assert (= (fp.sub roundNearestTiesToEven x y) r))
(check-sat)
(exit)
