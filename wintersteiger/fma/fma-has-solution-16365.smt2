(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3242837825959268283071423866203986108303070068359375p480 {- 1460444322461311 480 (-4.13408e+144)}
; Y = 1.8650449928637400365261100887437351047992706298828125p687 {+ 3895816307519853 687 (1.19756e+207)}
; Z = 1.68174158305288301562541164457798004150390625p441 {+ 3070291139399936 441 (9.54965e+132)}
; -1.3242837825959268283071423866203986108303070068359375p480 x 1.8650449928637400365261100887437351047992706298828125p687 1.68174158305288301562541164457798004150390625p441 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10111011111 #b0101001100000100010000110001000011011111011001111111)))
(assert (= y (fp #b0 #b11010101110 #b1101110101110011100101101011000111101011000101101101)))
(assert (= z (fp #b0 #b10110111000 #b1010111010000110100111011100101110001001000100000000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
