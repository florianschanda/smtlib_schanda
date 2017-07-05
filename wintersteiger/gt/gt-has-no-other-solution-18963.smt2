(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9131083186181985222873436214285902678966522216796875p-252 {- 4112274283477819 -252 (-2.64351e-076)}
; Y = 1.6831679246489887891158332422492094337940216064453125p-109 {+ 3076714810880661 -109 (2.59333e-033)}
; -1.9131083186181985222873436214285902678966522216796875p-252 > 1.6831679246489887891158332422492094337940216064453125p-109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01100000011 #b1110100111000001011101110111111000101011101100111011)))
(assert (= y (fp #b0 #b01110010010 #b1010111011100100000101111101011000001011001010010101)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
