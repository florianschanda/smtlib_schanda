(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = 1.130690085116388132746578776277601718902587890625p548 {+ 588575818631184 548 (1.04179e+165)}
; -oo = 1.130690085116388132746578776277601718902587890625p548 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b0 #b11000100011 #b0010000101110100111001111100100101111100100000010000)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
