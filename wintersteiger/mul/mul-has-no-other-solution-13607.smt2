(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.8684681076107125807794773209025152027606964111328125p988 {- 3911232645818765 988 (-4.88789e+297)}
; Y = -1.430054937627914579678645168314687907695770263671875p782 {- 1936795256849918 782 (-3.63755e+235)}
; -1.8684681076107125807794773209025152027606964111328125p988 * -1.430054937627914579678645168314687907695770263671875p782 == +oo
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
(assert (= x (fp #b1 #b11111011011 #b1101111001010011111011010000011111001110100110001101)))
(assert (= y (fp #b1 #b11100001101 #b0110111000011000000101001001010010011000010111111110)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.mul roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
