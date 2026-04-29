(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0517321788839202323373456238186918199062347412109375p792 {- 232981021544687 792 (-2.73944e+238)}
; Y = 1.4161037848903015312629349864437244832515716552734375p-606 {+ 1873964850579415 -606 (5.33234e-183)}
; -1.0517321788839202323373456238186918199062347412109375p792 > 1.4161037848903015312629349864437244832515716552734375p-606 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11100010111 #b0000110100111110010100011111000001110101000011101111)))
(assert (= y (fp #b0 #b00110100001 #b0110101010000101110001110001001111011000011111010111)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
