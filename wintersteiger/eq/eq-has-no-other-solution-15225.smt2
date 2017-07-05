(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.862669483712794171736959469853900372982025146484375p36 {- 3885117965392838 36 (-1.28002e+011)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.862669483712794171736959469853900372982025146484375p36 = -oo == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10000100011 #b1101110011010111111010000100001111001101101111000110)))
(assert (= y (_ -oo 11 53)))
(assert  (not (= (fp.eq x y) false)))
(check-sat)
(exit)
