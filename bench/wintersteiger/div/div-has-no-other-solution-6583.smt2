(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.182326698536275255690952690201811492443084716796875p769 {- 821126451587662 769 (-3.67117e+231)}
; Y = -1.608390679270728984562310870387591421604156494140625p-264 {- 2739948036459338 -264 (-5.42591e-080)}
; -1.182326698536275255690952690201811492443084716796875p769 / -1.608390679270728984562310870387591421604156494140625p-264 == +oo
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
(assert (= x (fp #b1 #b11100000000 #b0010111010101100111101100110011101100110101001001110)))
(assert (= y (fp #b1 #b01011110111 #b1001101110111111011111011101011010101000101101001010)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
