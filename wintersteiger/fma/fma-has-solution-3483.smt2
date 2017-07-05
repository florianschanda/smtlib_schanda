(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.64326924811883134935897032846696674823760986328125p782 {- 2897027146126868 782 (-4.17989e+235)}
; Y = 1.755394439889154778455804262193851172924041748046875p-1010 {+ 3401994118002542 -1010 (1.59985e-304)}
; Z = -1.6264781548245468290048165727057494223117828369140625p27 {- 2821406784623585 27 (-2.18302e+008)}
; -1.64326924811883134935897032846696674823760986328125p782 x 1.755394439889154778455804262193851172924041748046875p-1010 -1.6264781548245468290048165727057494223117828369140625p27 == -1.626478154824547051049421497737057507038116455078125p27
; [HW: -1.626478154824547051049421497737057507038116455078125p27] 

; mpf : - 2821406784623586 27
; mpfd: - 2821406784623586 27 (-2.18302e+008) class: Neg. norm. non-zero
; hwf : - 2821406784623586 27 (-2.18302e+008) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11100001101 #b1010010010101101010010110001111100110001011000010100)))
(assert (= y (fp #b0 #b00000001101 #b1100000101100001100001111010111011100111011101101110)))
(assert (= z (fp #b1 #b10000011010 #b1010000001100000110111110101001010100001001111100001)))
(assert (= r (fp #b1 #b10000011010 #b1010000001100000110111110101001010100001001111100010)))
(assert (= (fp.fma roundTowardNegative x y z) r))
(check-sat)
(exit)
