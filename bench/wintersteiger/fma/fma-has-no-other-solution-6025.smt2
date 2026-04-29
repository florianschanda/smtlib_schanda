(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.3313125238903611435858920231112278997898101806640625p430 {- 1492098959135809 430 (-3.69129e+129)}
; Y = 1.881165012243384726531303385854698717594146728515625p604 {+ 3968414420791226 604 (1.24895e+182)}
; Z = -1.789417993510706850202041096054017543792724609375p-518 {- 3555222581414384 -518 (-2.08533e-156)}
; -1.3313125238903611435858920231112278997898101806640625p430 x 1.881165012243384726531303385854698717594146728515625p604 -1.789417993510706850202041096054017543792724609375p-518 == -oo
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
(assert (= x (fp #b1 #b10110101101 #b0101010011010000111001011100011011011101010001000001)))
(assert (= y (fp #b0 #b11001011011 #b1110000110010100000001111011110111110110111110111010)))
(assert (= z (fp #b1 #b00111111001 #b1100101000010111010011000011000100000000100111110000)))
(assert (= r (_ -oo 11 53)))
(assert  (not (= (fp.fma roundNearestTiesToEven x y z) r)))
(check-sat)
(exit)
