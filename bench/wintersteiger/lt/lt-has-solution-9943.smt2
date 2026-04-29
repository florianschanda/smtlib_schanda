(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.4937133421973609603838895054650492966175079345703125p-745 {+ 2223487223947877 -745 (8.07087e-225)}
; Y = -1.9931769718233656174533052762853913009166717529296875p-165 {- 4472871440216667 -165 (-4.26183e-050)}
; 1.4937133421973609603838895054650492966175079345703125p-745 < -1.9931769718233656174533052762853913009166717529296875p-165 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00100010110 #b0111111001100011111111110110001001010110001001100101)))
(assert (= y (fp #b1 #b01101011010 #b1111111001000000110110001001010100011111001001011011)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
