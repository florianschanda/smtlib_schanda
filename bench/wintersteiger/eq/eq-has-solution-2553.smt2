(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -zero {- 0 -1023 (-0)}
; Y = -1.1008232907705151060184789457707665860652923583984375p110 {- 454067734744359 110 (-1.42895e+033)}
; -zero = -1.1008232907705151060184789457707665860652923583984375p110 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00000000000 #b0000000000000000000000000000000000000000000000000000)))
(assert (= y (fp #b1 #b10001101101 #b0001100111001111100011100010000010001000110100100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
