(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.73771285697388133684171407367102801799774169921875p821 {+ 3322363347773996 821 (2.42999e+247)}
; 1.73771285697388133684171407367102801799774169921875p821 S == 1.8642493701079161372291537190903909504413604736328125p410
; [HW: 1.8642493701079161372291537190903909504413604736328125p410] 

; mpf : + 3892233141173197 410
; mpfd: + 3892233141173197 410 (4.92949e+123) class: Pos. norm. non-zero
; hwf : + 3892233141173197 410 (4.92949e+123) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100110100 #b1011110011011010101111111111001010001010101000101100)))
(assert (= r (fp #b0 #b10110011001 #b1101110100111111011100100101110000110011101111001101)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
