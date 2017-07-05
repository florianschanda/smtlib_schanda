(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8223676261490557859445971189416013658046722412109375p-473 {- 3703614534686447 -473 (-7.47219e-143)}
; Y = +oo {+ 0 1024 (1.#INF)}
; -1.8223676261490557859445971189416013658046722412109375p-473 = +oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b01000100110 #b1101001010000110101011110100101110011001011011101111)))
(assert (= y (_ +oo 11 53)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
