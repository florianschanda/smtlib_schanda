(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.2606386193356489133776676681009121239185333251953125p-675 {- 1173811988918389 -675 (-8.04162e-204)}
; Y = -1.267387026997322863053341279737651348114013671875p-249 {- 1204204115148848 -249 (-1.40101e-075)}
; Z = -oo {- 0 1024 (-1.#INF)}
; -1.2606386193356489133776676681009121239185333251953125p-675 x -1.267387026997322863053341279737651348114013671875p-249 -oo == -oo
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
(assert (= x (fp #b1 #b00101011100 #b0100001010111001001101100110101000011111000001110101)))
(assert (= y (fp #b1 #b01100000110 #b0100010001110011011110011110100001010100000000110000)))
(assert (= z (_ -oo 11 53)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
