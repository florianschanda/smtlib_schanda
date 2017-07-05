(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5055671325906183621867739930166862905025482177734375p-835 {+ 2276871949945879 -835 (6.57134e-252)}
; Y = 1.8059381993971757029981972664245404303073883056640625p-394 {+ 3629622974488769 -394 (4.47594e-119)}
; 1.5055671325906183621867739930166862905025482177734375p-835 + 1.8059381993971757029981972664245404303073883056640625p-394 == 1.8059381993971757029981972664245404303073883056640625p-394
; [HW: 1.8059381993971757029981972664245404303073883056640625p-394] 

; mpf : + 3629622974488769 -394
; mpfd: + 3629622974488769 -394 (4.47594e-119) class: Pos. norm. non-zero
; hwf : + 3629622974488769 -394 (4.47594e-119) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010111100 #b1000000101101100110110001111110001101000110000010111)))
(assert (= y (fp #b0 #b01001110101 #b1100111001010001111101110100000100000010000011000001)))
(assert (= r (fp #b0 #b01001110101 #b1100111001010001111101110100000100000010000011000001)))
(assert (= (fp.add roundTowardNegative x y) r))
(check-sat)
(exit)
