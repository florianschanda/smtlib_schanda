(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.97845805472256319745838482049293816089630126953125 173 {+ 4406583330646196 173 (2.36873e+052)}
; 1.97845805472256319745838482049293816089630126953125 173 I == 1.97845805472256319745838482049293816089630126953125 173
; [HW: 1.97845805472256319745838482049293816089630126953125 173] 

; mpf : + 4406583330646196 173
; mpfd: + 4406583330646196 173 (2.36873e+052) class: Pos. norm. non-zero
; hwf : + 4406583330646196 173 (2.36873e+052) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010101100 #b1111101001111100001110100010000110001010100010110100)))
(assert (= r (fp #b0 #b10010101100 #b1111101001111100001110100010000110001010100010110100)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
