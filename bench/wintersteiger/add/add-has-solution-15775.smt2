(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = +oo {+ 0 1024 (1.#INF)}
; Y = -1.4972608979339672163888508293894119560718536376953125p692 {- 2239463994641333 692 (-3.07648e+208)}
; +oo + -1.4972608979339672163888508293894119560718536376953125p692 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (_ +oo 11 53)))
(assert (= y (fp #b1 #b11010110011 #b0111111101001100011111010111111000110100101110110101)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.add roundTowardPositive x y) r))
(check-sat)
(exit)
