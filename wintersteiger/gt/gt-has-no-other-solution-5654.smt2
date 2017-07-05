(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.8359776734169492851123095533694140613079071044921875p356 {- 3764908738490627 356 (-2.69492e+107)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.8359776734169492851123095533694140613079071044921875p356 > +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10101100011 #b1101011000000010101000011111111110000011000100000011)))
(assert (= y (_ +oo 11 53)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
