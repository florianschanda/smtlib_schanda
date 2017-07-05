(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5085374097178745333991400912054814398288726806640625p-870 {+ 2290248888909377 -870 (1.91628e-262)}
; Y = 1.80654776484703916139551438391208648681640625p-731 {+ 3632368213221632 -731 (1.59927e-220)}
; 1.5085374097178745333991400912054814398288726806640625p-870 < 1.80654776484703916139551438391208648681640625p-731 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00010011001 #b1000001000101111100000011111011110000111111001000001)))
(assert (= y (fp #b0 #b00100100100 #b1100111001111001111010100001000010101110000100000000)))
(assert  (not (= (fp.lt x y) true)))
(check-sat)
(exit)
