(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.5016182605778702896515142128919251263141632080078125p-124 {+ 2259087811420733 -124 (7.06058e-038)}
; Y = -1.2393165861942272432116851632599718868732452392578125p761 {- 1077786088407901 761 (-1.50317e+229)}
; 1.5016182605778702896515142128919251263141632080078125p-124 < -1.2393165861942272432116851632599718868732452392578125p761 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01110000011 #b1000000001101010000011011110100001000010001000111101)))
(assert (= y (fp #b1 #b11011111000 #b0011110101000011110110100000111100011000001101011101)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
