(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.7149721961972541617313936512800864875316619873046875p-930 {+ 3219948516374219 -930 (1.88956e-280)}
; Y = -zero {- 0 -1023 (-0)}
; 1.7149721961972541617313936512800864875316619873046875p-930 - -zero == 1.7149721961972541617313936512800864875316619873046875p-930
; [HW: 1.7149721961972541617313936512800864875316619873046875p-930] 

; mpf : + 3219948516374219 -930
; mpfd: + 3219948516374219 -930 (1.88956e-280) class: Pos. norm. non-zero
; hwf : + 3219948516374219 -930 (1.88956e-280) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001011101 #b1011011100001000011010101111100000110111011011001011)))
(assert (= y (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= r (fp #b0 #b00001011101 #b1011011100001000011010101111100000110111011011001011)))
(assert (= (fp.sub roundTowardPositive x y) r))
(check-sat)
(exit)
