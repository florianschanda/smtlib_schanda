(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.0391660723848925584889002493582665920257568359375p-711 {- 176388308998168 -711 (-9.64624e-215)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.0391660723848925584889002493582665920257568359375p-711 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00100111000 #b0000101000000110110010011010100000000001100000011000)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
