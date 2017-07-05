(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.1977647176810253260015315390774048864841461181640625p111 {- 890653108855297 111 (-3.10957e+033)}
; Y = -oo {- 0 1024 (-1.#INF)}
; -1.1977647176810253260015315390774048864841461181640625p111 * -oo == +oo
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
(assert (= x (fp #b1 #b10001101110 #b0011001010100000101101010110001010111110001000000001)))
(assert (= y (_ -oo 11 53)))
(assert (= r (_ +oo 11 53)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
