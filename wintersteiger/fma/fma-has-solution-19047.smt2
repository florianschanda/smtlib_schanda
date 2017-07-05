(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3158962400075229215445915542659349739551544189453125p-256 {+ 1422670188785621 -256 (1.13643e-077)}
; Y = -oo {- 0 1024 (-1.#INF)}
; Z = 1.0736862236346897958583213039673864841461181640625p-132 {+ 331853249303528 -132 (1.97205e-040)}
; 1.3158962400075229215445915542659349739551544189453125p-256 x -oo 1.0736862236346897958583213039673864841461181640625p-132 == -oo
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
(assert (= x (fp #b0 #b01011111111 #b0101000011011110100100110111001111000010111111010101)))
(assert (= y (_ -oo 11 53)))
(assert (= z (fp #b0 #b01101111011 #b0001001011011101000110011011000010101101001111101000)))
(assert (= r (_ -oo 11 53)))
(assert (= (fp.fma roundNearestTiesToEven x y z) r))
(check-sat)
(exit)
