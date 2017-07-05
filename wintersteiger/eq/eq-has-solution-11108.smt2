(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.0698823251913773813015495761646889150142669677734375p689 {- 314722013691671 689 (-2.74791e+207)}
; Y = 1.39264876651226909842762324842624366283416748046875p43 {+ 1768332838552140 43 (1.22499e+013)}
; -1.0698823251913773813015495761646889150142669677734375p689 = 1.39264876651226909842762324842624366283416748046875p43 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11010110000 #b0001000111100011110011101101110101000011111100010111)))
(assert (= y (fp #b0 #b10000101010 #b0110010010000100101000010010101011111100001001001100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
