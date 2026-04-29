(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.50200254300332147749941213987767696380615234375p369 {+ 2260818465608800 369 (1.80609e+111)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.50200254300332147749941213987767696380615234375p369 < -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b10101110000 #b1000000010000011001111010001100010110101010001100000)))
(assert (= y (_ -oo 11 53)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
