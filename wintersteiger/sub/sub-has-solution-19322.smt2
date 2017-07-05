(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.664128257493910911790635509532876312732696533203125p106 {+ 2990967772975794 106 (1.3501e+032)}
; Y = -oo {- 0 1024 (-1.#INF)}
; 1.664128257493910911790635509532876312732696533203125p106 - -oo == +oo
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
(assert (= x (fp #b0 #b10001101001 #b1010101000000100010011110011101001001001001010110010)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.sub roundTowardNegative x y) r))
(check-sat)
(exit)
