(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.9642435283812886837040423415601253509521484375p582 {- 4342566795112384 582 (-3.10923e+175)}
; Y = -1.622607430120080795887815838796086609363555908203125p-996 {- 2803974590286898 -996 (-2.42291e-300)}
; -1.9642435283812886837040423415601253509521484375p582 / -1.622607430120080795887815838796086609363555908203125p-996 == +oo
; [HW: +oo] 

; mpf : + 0 1024
; mpfd: + 0 1024 (1.#INF) class: +INF
; hwf : + 0 1024 (1.#INF) class: +INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001000101 #b1111011011011000101010011111001111000110111111000000)))
(assert (= y (fp #b1 #b00000011011 #b1001111101100011001100110101011010011100110000110010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundTowardPositive x y) r)))
(check-sat)
(exit)
