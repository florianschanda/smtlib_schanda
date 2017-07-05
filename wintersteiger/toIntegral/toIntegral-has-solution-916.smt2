(set-info :smt-lib-version 2.6)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.6243623512325033875214330691960640251636505126953125 713 {+ 2811878052354869 713 (6.99955e+214)}
; 1.6243623512325033875214330691960640251636505126953125 713 I == 1.6243623512325033875214330691960640251636505126953125 713
; [HW: 1.6243623512325033875214330691960640251636505126953125 713] 

; mpf : + 2811878052354869 713
; mpfd: + 2811878052354869 713 (6.99955e+214) class: Pos. norm. non-zero
; hwf : + 2811878052354869 713 (6.99955e+214) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011001000 #b1001111111010110001101100000011101100101101100110101)))
(assert (= r (fp #b0 #b11011001000 #b1001111111010110001101100000011101100101101100110101)))
(assert (= (fp.roundToIntegral roundTowardZero x) r))
(check-sat)
(exit)
