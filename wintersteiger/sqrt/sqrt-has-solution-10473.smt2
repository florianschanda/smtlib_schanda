(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9328350399138616300120929736294783651828765869140625p710 {+ 4201115538154209 710 (1.0411e+214)}
; 1.9328350399138616300120929736294783651828765869140625p710 S == 1.3902643777044210171567328870878554880619049072265625p355
; [HW: 1.3902643777044210171567328870878554880619049072265625p355] 

; mpf : + 1757594506005609 355
; mpfd: + 1757594506005609 355 (1.02034e+107) class: Pos. norm. non-zero
; hwf : + 1757594506005609 355 (1.02034e+107) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011000101 #b1110111011001110010001101111010011111110001011100001)))
(assert (= r (fp #b0 #b10101100010 #b0110001111101000010111011100001100001000110001101001)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
