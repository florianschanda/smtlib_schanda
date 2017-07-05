(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0852058293226658491903435788117349147796630859375p319 {- 383732941187352 319 (-1.15899e+096)}
; Y = 1.684182801744204649452285593724809587001800537109375p910 {+ 3081285410988502 910 (1.45776e+274)}
; -1.0852058293226658491903435788117349147796630859375p319 * 1.684182801744204649452285593724809587001800537109375p910 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10100111110 #b0001010111010000000011001001101001011110100100011000)))
(assert (= y (fp #b0 #b11110001101 #b1010111100100110100110101010010111111010000111010110)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
