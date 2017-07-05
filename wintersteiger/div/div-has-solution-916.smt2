(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.255542105743518987992501934058964252471923828125p940 {- 1150859332203984 940 (-1.16688e+283)}
; Y = 1.996514911756438248602307794499211013317108154296875p-156 {+ 4487904185255438 -156 (2.18571e-047)}
; -1.255542105743518987992501934058964252471923828125p940 / 1.996514911756438248602307794499211013317108154296875p-156 == -oo
; [HW: -oo] 

; mpf : - 0 1024
; mpfd: - 0 1024 (-1.#INF) class: -INF
; hwf : - 0 1024 (-1.#INF) class: -INF

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11110101011 #b0100000101101011001101010001101011101011010111010000)))
(assert (= y (fp #b0 #b01101100011 #b1111111100011011100110011110101111111000011000001110)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.div roundNearestTiesToEven x y) r))
(check-sat)
(exit)
