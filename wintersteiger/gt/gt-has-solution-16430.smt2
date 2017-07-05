(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.2887854169032646467485392349772155284881591796875p-686 {- 1300573895955576 -686 (-4.01424e-207)}
; Y = 1.6582407183512775095124425206449814140796661376953125p-933 {+ 2964452653886901 -933 (2.28382e-281)}
; -1.2887854169032646467485392349772155284881591796875p-686 > 1.6582407183512775095124425206449814140796661376953125p-933 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00101010001 #b0100100111101101110101110101000100101001010001111000)))
(assert (= y (fp #b0 #b00001011010 #b1010100010000010011101101011011000110110110110110101)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
