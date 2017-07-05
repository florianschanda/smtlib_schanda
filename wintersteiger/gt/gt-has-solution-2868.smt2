(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4177787782269926086797795505844987928867340087890625p-449 {- 1881508349946385 -449 (-9.75305e-136)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.4177787782269926086797795505844987928867340087890625p-449 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000111110 #b0110101011110011100011001100110101110010101000010001)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
