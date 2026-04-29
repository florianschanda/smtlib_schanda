(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.098683690300585880095241009257733821868896484375p-799 {+ 444431830865264 -799 (3.29538e-241)}
; -oo < 1.098683690300585880095241009257733821868896484375p-799 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b00011100000 #b0001100101000011010101011001011001111101010101110000)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
