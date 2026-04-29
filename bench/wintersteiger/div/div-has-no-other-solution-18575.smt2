(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4647019859079131176571308969869278371334075927734375p-209 {+ 2092831690573207 -209 (1.78025e-063)}
; Y = -1.1009160871790932834102250126306898891925811767578125p984 {- 454485652615453 984 (-1.79999e+296)}
; 1.4647019859079131176571308969869278371334075927734375p-209 / -1.1009160871790932834102250126306898891925811767578125p984 == -zero
; [HW: -zero] 

; mpf : - 0 -1023
; mpfd: - 0 -1023 (-0) class: -0
; hwf : - 0 -1023 (-0) class: -0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101110 #b0111011011110110101101011001011111011100010110010111)))
(assert (= y (fp #b1 #b11111010111 #b0001100111010101101000101111111000010011000100011101)))
(assert (= r (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
