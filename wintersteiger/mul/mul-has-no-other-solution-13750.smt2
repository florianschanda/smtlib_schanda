(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.4282237061259888122322081471793353557586669921875p726 {- 1928548123340216 726 (-5.04165e+218)}
; Y = -1.92540723719591877483026109985075891017913818359375p503 {- 4167663688601500 503 (-5.04209e+151)}
; -1.4282237061259888122322081471793353557586669921875p726 * -1.92540723719591877483026109985075891017913818359375p503 == +oo
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
(assert (= x (fp #b1 #b11011010101 #b0110110110100000000100011001110100101110110110111000)))
(assert (= y (fp #b1 #b10111110110 #b1110110011100111011111010001101100111100111110011100)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundTowardPositive x y) r)))
(check-sat)
(exit)
