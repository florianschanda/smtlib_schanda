(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.930315062272436765766769894980825483798980712890625p423 {- 4189766567787306 423 (-4.18135e+127)}
; Y = 1.145714244257705960450266502448357641696929931640625p948 {+ 656238616141578 948 (2.72591e+285)}
; Z = 1.870489390059876910754610435105860233306884765625p-747 {+ 3920335692703632 -747 (2.52667e-225)}
; -1.930315062272436765766769894980825483798980712890625p423 x 1.145714244257705960450266502448357641696929931640625p948 1.870489390059876910754610435105860233306884765625p-747 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110100110 #b1110111000101001001000001011111101101111101100101010)))
(assert (= y (fp #b0 #b11110110011 #b0010010101001101100001110101100110100101111100001010)))
(assert (= z (fp #b0 #b00100010100 #b1101111011011000011001001000010111010010011110010000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
