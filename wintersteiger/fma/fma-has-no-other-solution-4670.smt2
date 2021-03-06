(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4423252567405684398949006208567880094051361083984375p898 {+ 1992055861433383 898 (3.04789e+270)}
; Y = 1.518413207311802626264807258849032223224639892578125p274 {+ 2334725527273378 274 (4.60902e+082)}
; Z = 1.7835152645040377450413870974443852901458740234375p744 {+ 3528639053259480 744 (1.65042e+224)}
; 1.4423252567405684398949006208567880094051361083984375p898 x 1.518413207311802626264807258849032223224639892578125p274 1.7835152645040377450413870974443852901458740234375p744 == +oo
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
(assert (= x (fp #b0 #b11110000001 #b0111000100111100001110100101111111100101010000100111)))
(assert (= y (fp #b0 #b10100010001 #b1000010010110110101110100101101100110111111110100010)))
(assert (= z (fp #b0 #b11011100111 #b1100100010010100011101001101010011110110001011011000)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
