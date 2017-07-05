(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.7274463355483822279978767255670391023159027099609375p610 {+ 3276127045707727 610 (7.3401e+183)}
; +oo = 1.7274463355483822279978767255670391023159027099609375p610 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11001100001 #b1011101000111001111011000100110011000110011111001111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
