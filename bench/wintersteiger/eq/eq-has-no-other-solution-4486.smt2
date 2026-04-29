(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.890520403653652703468424078891985118389129638671875p-265 {+ 4010547358060414 -265 (3.18884e-080)}
; Y = -1.2273615901006060813216436145012266933917999267578125p954 {- 1023945572455453 954 (-1.86891e+287)}
; 1.890520403653652703468424078891985118389129638671875p-265 = -1.2273615901006060813216436145012266933917999267578125p954 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011110110 #b1110001111111001001001010010101000011100111101111110)))
(assert (= y (fp #b1 #b11110111001 #b0011101000110100010111101000000111011001010000011101)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
