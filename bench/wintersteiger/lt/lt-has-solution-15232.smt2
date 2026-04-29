(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.3378480895606588152446647654869593679904937744140625p6 {+ 1521532530253217 6 (85.6223)}
; +oo < 1.3378480895606588152446647654869593679904937744140625p6 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b10000000101 #b0101011001111101001101100101111110101101110110100001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
