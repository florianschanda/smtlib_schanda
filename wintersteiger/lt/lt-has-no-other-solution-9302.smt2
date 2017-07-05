(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.0622523232120750780183016104274429380893707275390625p-55 {- 280359539620849 -55 (-2.94834e-017)}
; Y = 1.751091950815169884236865982529707252979278564453125p-773 {+ 3382617429812178 -773 (3.5247e-233)}
; -1.0622523232120750780183016104274429380893707275390625p-55 < 1.751091950815169884236865982529707252979278564453125p-773 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01111001000 #b0000111111101111110001001010110001001011101111110001)))
(assert (= y (fp #b0 #b00011111010 #b1100000001000111100011111110010100001010001111010010)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
