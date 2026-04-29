(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.5182678458012957012357446728856302797794342041015625p-364 {+ 2334070877228825 -364 (4.04045e-110)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.5182678458012957012357446728856302797794342041015625p-364 > -oo == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01010010011 #b1000010010101101001100111001100001001000111100011001)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
