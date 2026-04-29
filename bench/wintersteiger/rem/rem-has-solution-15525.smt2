(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.705149417771378406172289032838307321071624755859375p889 {+ 3175710655115702 889 (7.03766e+267)}
; Y = +oo {+ 0 1024 (1.#INF)}
; 1.705149417771378406172289032838307321071624755859375p889 % +oo == 1.705149417771378406172289032838307321071624755859375p889
; [HW: 1.705149417771378406172289032838307321071624755859375p889] 

; mpf : + 3175710655115702 889
; mpfd: + 3175710655115702 889 (7.03766e+267) class: Pos. norm. non-zero
; hwf : + 3175710655115702 889 (7.03766e+267) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111000 #b1011010010000100101011000001100000011111000110110110)))
(assert (= y (_ +oo 11 53)))
(assert (= r (fp #b0 #b11101111000 #xb484ac181f1b6)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
