(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.012075057514197684582768488326109945774078369140625p638 {- 54381224521418 638 (-1.15438e+192)}
; Y = -1.7224306642697764235805379939847625792026519775390625p-705 {- 3253538470406385 -705 (-1.02328e-212)}
; -1.012075057514197684582768488326109945774078369140625p638 / -1.7224306642697764235805379939847625792026519775390625p-705 == +oo
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
(assert (= x (fp #b1 #b11001111101 #b0000001100010111010110011101100100011110111011001010)))
(assert (= y (fp #b1 #b00100111110 #b1011100011110001001101110100110010101010100011110001)))
(assert (= r (_ +oo 11 53)))
(assert  (not (= (fp.div roundNearestTiesToEven x y) r)))
(check-sat)
(exit)
