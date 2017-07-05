(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.689714507311399049882538747624494135379791259765625p-460 {- 3106197998119642 -460 (-5.67565e-139)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.689714507311399049882538747624494135379791259765625p-460 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000110011 #b1011000010010001001000010100010001111010101011011010)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
