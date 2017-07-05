(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = 1.1738340989968010230626305201440118253231048583984375p694 {+ 782879183466279 694 (9.6477e+208)}
; +oo = 1.1738340989968010230626305201440118253231048583984375p694 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b0 #b11010110101 #b0010110010000000011001000011101000011110111100100111)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
