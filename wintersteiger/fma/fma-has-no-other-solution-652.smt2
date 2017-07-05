(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -oo {- 0 1024 (-1.#INF)}
; Y = -1.136099008140721622339697205461561679840087890625p539 {- 612935442348048 539 (-2.04448e+162)}
; Z = -1.40611357948556037200660284725017845630645751953125p844 {- 1828972965241268 844 (-1.64944e+254)}
; -oo x -1.136099008140721622339697205461561679840087890625p539 -1.40611357948556037200660284725017845630645751953125p844 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (_ -oo 11 53)))
(assert (= y (fp #b1 #b11000011010 #b0010001011010111011000100111010011111011100000010000)))
(assert (= z (fp #b1 #b11101001011 #b0110011111110111000011110011111001011010000110110100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
